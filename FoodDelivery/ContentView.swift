//
//  ContentView.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var isMenu: Bool = true
    var meats: [String] = ["Beuf", "Poulet", "Poisson", "Veggie"]
    @State var selectedMeat: Int = 0
    
    
    var body: some View {
        Form {
            Section("Composez votre Commande") {
                ToggleMenu(isMenu: $isMenu)
                HStack {
                    Spacer()
                    Image(meats[selectedMeat])
                    Spacer()
                }
                PickerMeat(meats: meats, selectionMeat: $selectedMeat)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
