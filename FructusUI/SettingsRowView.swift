//
//  SettingsRowView.swift
//  FructusUI
//
//  Created by Daniel Washington Ignacio on 06/11/23.
//

import SwiftUI

struct SettingsRowView: View {
    //MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                        .font(.headline.bold())
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                        .font(.headline.bold())
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            } //: HSTACK
        } //: VSTACK
    }
}


//MARK: - PREVIEW
#Preview {
    SettingsRowView(name: "Developer", content: "Daniel Washington Ignacio")
        .padding()
}
