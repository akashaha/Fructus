//
//  StartButtonView.swift
//  Fructs
//
//  Created by Arman Akash on 9/3/21.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES

    @AppStorage("isOnbording") var isOnbording : Bool?

    //MARK: - BODY

    var body: some View {
        Button(action: {
           isOnbording = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth:1.25)
            )
        }) //: BUTTON
        .accentColor(Color.white)
    }
}
//MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
