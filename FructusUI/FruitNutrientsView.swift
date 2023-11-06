//
//  FruitNutrientsView.swift
//  FructusUI
//
//  Created by Daniel Washington Ignacio on 06/11/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sougar", "Fat", "Protein" , "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
        
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.headline.weight(.bold))
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            } //: DISCLOSURE
        } //: BOX
    }
}


// MARK: - PREVIEW
#Preview {
    FruitNutrientsView(fruit: fruitsData[0])
}
