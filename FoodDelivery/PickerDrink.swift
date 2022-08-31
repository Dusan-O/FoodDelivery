//
//  SwiftUIView.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct PickerDrink: View {
    @Binding var selected: Int
    var drinks: [String]
    
    var body: some View {
        Picker(drinks[selected], selection: $selected) {
            ForEach(0..<drinks.count) { i in
                Text(drinks[i]).tag(i)
            }
        }
    }
}

