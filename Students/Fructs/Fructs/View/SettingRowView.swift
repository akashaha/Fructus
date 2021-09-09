//
//  SettingRowView.swift
//  Fructs
//
//  Created by Arman Akash on 9/9/21.
//

import SwiftUI

struct SettingRowView: View {
    //MARK: - PROPERTIES
    var name : String
    var content : String? = nil
    var linkLabel: String? = nil
    var linkDestination : String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                }
                else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination : URL(string:"https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    
                }
                else {
                    EmptyView()
                }
            }
        }//: HSTACK
    }
}

//MARK: - PREVIEW
struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingRowView(name: "Developer", content: "ArmanAkash")
                .previewLayout(.sizeThatFits)
                .padding()
            SettingRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
