//
//  SettingsLabelView.swift
//  FructusUI
//
//  Created by Daniel Washington Ignacio on 06/11/23.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}


//MARK: - PREVIEW
#Preview {
    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
        .padding()
}
