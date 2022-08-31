//
//  ContentView.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isMenu: Bool = true
    var meats: [String] = ["Boeuf", "Poulet", "Poisson", "Veggie"]
    var drinks = ["Soda", "Orange", "Citron", "Ice Tea", "Eau"]
    @State var selecteddrink = 0
    @State var selectedMeat: Int = 0
    @State var cornichons: Int = 0
    @State var bacon: Int = 0
    @State var ketchup = false
    @State var mustard = false
    @State var big = false
    @State var texte = ""
    @State var number = ""
    @State var date = Date()
    @State var cheese: Double = 50
    @State var recap = ""
    @FocusState var focus
    
    
    var body: some View {
        Form {
            Section("Composez votre Commande") {
                ToggleMenu(isMenu: $isMenu)
                MeatImage(name: meats[selectedMeat])
                PickerMeat(meats: meats, selectionMeat: $selectedMeat)
                StepperCondiments(value: $bacon, image: "bacon")
                StepperCondiments(value: $cornichons, image: "gherkin")
                ToggleSaucages(image: "ketchup", saucages: $ketchup)
                ToggleSaucages(image: "mustard", saucages: $mustard)
                SliderCheese(cheese: $cheese)
            }
            if isMenu {
                Section("Pour le menu") {
                    PickerDrink(selected: $selecteddrink, drinks: drinks)
                    ToggleFries(isBig: $big)
                }
            }
            Section("Informations") {
                TextField("Nom de la commande", text: $texte)
                HStack {
                    TextField("Numéro", text: $number)
                        .focused($focus)
                    #if os(iOS)
                        .keyboardType(.phonePad)
                    #endif
                    Button("Ok") {
                        focus = false
                }
            }
                DatePicker("Heure", selection: $date, displayedComponents: .hourAndMinute)
            }
            Section("Récapitulatif") {
                Button("Je Commande") {
                    var commande = ""
                    commande += texte + " a commandé pour \(dateConverter())\n"
                    commande += isMenu ? "Menu" : "Burger simple"
                    commande += " \(meats[selectedMeat]) avec \(bacon) tranches de bacon et \(cornichons) tranches de cornichons.\n"
                    commande += "\(Int(cheese)) % de fromage\n"
                    if ketchup {
                        commande += "Avec Ketchup.\n"
                    }
                    if mustard {
                        commande += "Avec Moutarde.\n"
                    }
                    if isMenu {
                        commande += "Boissons: \(drinks[selecteddrink]).\n"
                        commande += big ? "Grande frite" : "Petite frite.\n"
                    }
                    if let phone = Int(number) {
                        commande += "Nous vous appellerons à ce numéro: \(phone)"
                    }
                    recap = commande
                    print(recap)
                }
                Text(recap)
                    .frame(height: 200)
            }
        }
    }
    
    func dateConverter() -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        formatter.dateStyle = .medium
        formatter.locale = Locale(identifier: "fr-FR")
        let str = formatter.string(from: date)
        return str
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
