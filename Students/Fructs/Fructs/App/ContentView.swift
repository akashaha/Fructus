//
//  ContentView.swift
//  Fructs
//
//  Created by Arman Akash on 9/2/21.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    var fruits : [Fruit] = fruitData
    @State private var isShowingSettings : Bool = false
    
    //MARK: - BODY
    var body: some View {
        
        NavigationView{
            List {
                ForEach(fruits){
                    items in
                    NavigationLink(
                        destination: FruitDetailView(fruit: items)){
                    FruitRowView(friuit: items)
                        .padding(.vertical, 4)
                        }
                }
            }.navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })) //: Button
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitData)
    }
}
