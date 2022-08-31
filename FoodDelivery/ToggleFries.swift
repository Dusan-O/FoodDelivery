//
//  ToggleFries.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct ToggleFries: View {
    @Binding var isBig: Bool
    var body: some View {
        HStack {
            Image("fries")
                .resizable()
                .frame(width: 30, height: 30)
            Toggle(isBig ? "Grande" : "Petite", isOn: $isBig)
        }
    }
}

