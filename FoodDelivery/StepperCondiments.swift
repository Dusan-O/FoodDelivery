//
//  StepperCondiments.swift
//  FoodDelivery
//
//  Created by Dusan Orescanin on 31/08/2022.
//

import SwiftUI

struct StepperCondiments: View {
    @Binding var value: Int
    var image: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 30, height: 30)
            Stepper("Nombre de tranche: \(value)", value: $value, in: 0...5)
        }
    }
}

struct StepperCondiments_Previews: PreviewProvider {
    static var previews: some View {
        StepperCondiments(value: .constant(0), image: "gherkin")
    }
}
