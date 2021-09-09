//
//  FruitDetailView.swift
//  Fructs
//
//  Created by Arman Akash on 9/8/21.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit : Fruit
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators :false){
                VStack(alignment: .center, spacing: 20){
                    //Header
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        //Title
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                        //HeadLine
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        //Nutrients
                        FruitNutrintsView(fruit: fruit)
                        
                        //SubHeader
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        //Link
                        ScourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    }//: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth:640, alignment: .center)
                }//: VSTACK
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }// : SCROLL
            .edgesIgnoringSafeArea(.top)
            
        }//NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//MARK : PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
