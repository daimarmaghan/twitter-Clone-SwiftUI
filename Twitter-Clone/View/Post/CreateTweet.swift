//
//  CreateTweet.swift
//  twitter-clone (iOS)
//


import SwiftUI

struct CreateTweet : View {
    
    @Binding var show : Bool
    @State var text = ""

    var body : some View {

        VStack{
            
            HStack{
                
                Button(action: {
                        
                    self.show.toggle()
                    
                }) {
                    
                    Text("Cancel")
                }
                
                Spacer()
                
                Button(action: {
                    
                    self.show.toggle()
                    
                }) {
                    
                    Text("Tweet").padding()
                    
                }.background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            
            MultilineTextField(text: $text)
            
        }.padding()
    }
}
