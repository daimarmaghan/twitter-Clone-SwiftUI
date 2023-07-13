//
//  MessagesView.swift
//  twitter-clone (iOS)
//


import SwiftUI

struct MessagesView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<9) { i in
                    MessageCell()
                }
            }
        }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
