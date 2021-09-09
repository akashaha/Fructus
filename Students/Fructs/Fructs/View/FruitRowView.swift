//
//  FruitRowView.swift
//  Fructs
//
//  Created by Arman Akash on 9/8/21.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: - PROPERTY
    var friuit : Fruit
    
    //MARK: - BODY
    var body: some View {
        
        HStack {
            Image(friuit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: friuit.gradientColors),startPoint: .top, endPoint: .bottom)
                .cornerRadius(8))
            VStack(alignment: .leading, spacing: 5){
                Text(friuit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(friuit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
            
        }// : HSTACK
        
    }
}
//MARK: - PREVIEW
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(friuit: fruitData[0] )
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
