//
//  SliderCheese.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct SliderCheese: View {
    @Binding var cheese: Double
    
    var body: some View {
        VStack {
            HStack {
                Image("cheese")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("\(Int(cheese)) % de bonheur en plus")
            }
            Slider(value: $cheese, in: 0...100)
        }
    }
}

