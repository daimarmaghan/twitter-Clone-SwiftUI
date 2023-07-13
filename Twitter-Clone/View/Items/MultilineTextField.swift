//
//  MultilineTextField.swift
//  - clone (iOS)
//

import SwiftUI

struct MultilineTextField : UIViewRepresentable {
    
    
    @Binding var text : String
    
    func makeCoordinator() -> MultilineTextField.Coordinator {
        
        return MultilineTextField.Coordinator(parent1 : self)
    }
    func makeUIView(context: UIViewRepresentableContext<MultilineTextField>) -> UITextView {
        
        let text = UITextView()
        text.isEditable = true
        text.isUserInteractionEnabled = true
        text.text = "Type Something"
        text.textColor = .gray
        text.font = .systemFont(ofSize: 20)
        text.delegate = context.coordinator
        return text
    }
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<MultilineTextField>) {
        
        
    }
    
    class Coordinator : NSObject,UITextViewDelegate{
        
        
        var parent : MultilineTextField
        
        init(parent1 : MultilineTextField) {
            
            parent = parent1
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            
            textView.text = ""
            textView.textColor = .black
        }
        
        func textViewDidChange(_ textView: UITextView) {
            
            self.parent.text = textView.text
        }
    }
}
