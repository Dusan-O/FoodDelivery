//
//  PickerMeat.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct PickerMeat: View {
    var meats: [String]
    @Binding var selectionMeat: Int
    
    var body: some View {
        Picker("Choix de la viande", selection: $selectionMeat) {
            ForEach(0..<meats.count, id: \.self) { meat in
                Text(meats[meat]).tag(meat)
            }
        }.pickerStyle(.segmented)
    }
}

struct PickerMeat_Previews: PreviewProvider {
    static var previews: some View {
        PickerMeat(meats: [], selectionMeat: .constant(0))
    }
}
