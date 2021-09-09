//
//  FruitNutrintsView.swift
//  Fructs
//
//  Created by Arman Akash on 9/8/21.
//

import SwiftUI

struct FruitNutrintsView: View {
    //MARK: - PROPERTIES
    
    var fruit : Fruit
    let nutruents: [String] = ["Energy","Suger","Fat","Protein","Vitamins","Minerals"]
    
    //MARK: - BODY
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutrition value per 100g"){
            
                ForEach(0..<nutruents.count, id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutruents[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }// : HSTACK
                    
                }
            }
        }// : GROUPBOX
    }
}
//MARK: - PREVIEW
struct FruitNutrintsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrintsView(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 400))
    }
}
