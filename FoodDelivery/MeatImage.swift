//
//  MeatImage.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct MeatImage: View {
    var name: String
    var body: some View {
        HStack {
            Spacer()
            Image(name)
                .resizable()
                .frame(width: 50, height: 50)
            Spacer()
        }
    }
}

struct MeatImage_Previews: PreviewProvider {
    static var previews: some View {
        MeatImage(name: "Poulet")
    }
}
