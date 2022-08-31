//
//  ToggleSaucages.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct ToggleSaucages: View {
    var image: String
    @Binding var saucages: Bool
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 30, height: 30)
            Toggle(image, isOn: $saucages)
                .tint(image == "ketchup" ? .red : .yellow)
        }
    }
}

struct ToggleSaucages_Previews: PreviewProvider {
    static var previews: some View {
        ToggleSaucages(image: "ketchup", saucages: .constant(true))
    }
}
