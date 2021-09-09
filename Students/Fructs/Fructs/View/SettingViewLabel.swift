//
//  SettingViewLabel.swift
//  Fructs
//
//  Created by Arman Akash on 9/9/21.
//

import SwiftUI

struct SettingViewLabel: View {
    //MARK : - PROPERTIES
    
    var labelText : String
    var labelImage: String
    
    //MARK : - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }//: HSTACK
    }
}

//MARK : - PPREVIEW
struct SettingViewLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingViewLabel(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
