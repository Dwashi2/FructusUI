//
//  SourceLinkView.swift
//  FructusUI
//
//  Created by Daniel Washington Ignacio on 06/11/23.
//

import SwiftUI

struct SourceLinkView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Soucer")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}


// MARK: - PREVIEW
#Preview {
    SourceLinkView()
}
