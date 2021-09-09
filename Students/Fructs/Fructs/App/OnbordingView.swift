//
//  OnbordingView.swift
//  Fructs
//
//  Created by Arman Akash on 9/3/21.
//

import SwiftUI

struct OnbordingView: View {
    //MARK: - PROPERTIES
    
    var fruits : [Fruit] = fruitData
    
    //MARK: - BODY

    var body: some View {
        
        TabView{
            ForEach(fruits[0...8]){item in
                FruitCardView(fruit: item)
            } //: LOOP
        }//:TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW

struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView(fruits: fruitData)
    }
}
