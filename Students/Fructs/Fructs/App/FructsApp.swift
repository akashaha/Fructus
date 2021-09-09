//
//  FructsApp.swift
//  Fructs
//
//  Created by Arman Akash on 9/2/21.
//

import SwiftUI

@main
struct FructsApp: App {
    
    @AppStorage("isOnbording") var isOnbording: Bool = true
    
    var body: some Scene {
        WindowGroup {
            
            if isOnbording{
            OnbordingView()
            }
            else{
                ContentView()
            }
        }
    }
}
