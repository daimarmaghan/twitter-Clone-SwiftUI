//
//  SearchBar.swift
//  twitter-clone (iOS)
//

import SwiftUI

struct SearchBar : UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        
        let search = UISearchBar()
        return search
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
    }
}
