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
    @State var selectedMeat: Int = 0
    @State var cornichons: Int = 0
    @State var bacon: Int = 0
    @State var ketchup = false
    @State var mayo = false
    
    
    var body: some View {
        Form {
            Section("Composez votre Commande") {
                ToggleMenu(isMenu: $isMenu)
                MeatImage(name: meats[selectedMeat])
                PickerMeat(meats: meats, selectionMeat: $selectedMeat)
                StepperCondiments(value: $bacon, image: "bacon")
                StepperCondiments(value: $cornichons, image: "gherkin")
                ToggleSaucages(image: "ketchup", saucages: $ketchup)
                ToggleSaucages(image: "mustard", saucages: $mayo)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
