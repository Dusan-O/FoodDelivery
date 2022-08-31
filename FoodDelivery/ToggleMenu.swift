//
//  ToggleMenu.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct ToggleMenu: View {
    @Binding var isMenu: Bool
    
    
    var body: some View {
        Toggle(isMenu ? "Menu" : "Burger simple", isOn: $isMenu)
    }
}

struct ToggleMenu_Previews: PreviewProvider {
    static var previews: some View {
        ToggleMenu(isMenu: .constant(true))
    }
}
