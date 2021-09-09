//
//  ScouceLinkFile.swift
//  Fructs
//
//  Created by Arman Akash on 9/8/21.
//

import SwiftUI

struct ScourceLinkView: View {
    //MARK: - PROPERTIE
    
    //MARK: - BODY
    var body: some View {
        GroupBox(){
            HStack{
                
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination : URL(string: "https://www.wikipedia.org/")!)
                Image(systemName: "arrow.up.right.square")
                
            }//HSTACK
            .font(.footnote)
        }// : GroupBOX
    }
}

//MARK: - PREVIEW
struct ScouceLinkFile_Previews: PreviewProvider {
    static var previews: some View {
        ScourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
