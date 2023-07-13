//
//  SearchView.swift
//  twitter-clone (iOS)
//

import SwiftUI

struct SearchView : View {
    
    var body : some View{
        
        ScrollView{
            VStack(alignment: .leading, spacing:0,content:{
                HStack(content: {
                    
                    SearchBar()
                    Button(action:
                            {
                        
                    }, label:
                            {
                        Text("Cancel")
                            .foregroundColor(.black)
                            .padding(.trailing)
                    })
                })
                
                
                ForEach(0..<9, id:\.self ,content: {i in
                    SearchCell(tag: "hello", tweets: "hello")
                        .padding(.horizontal)
                    Divider()
                })
                
            })
        }
    }
}

struct SearchCell : View {
    
    var tag = ""
    var tweets = ""
    
    var body : some View{
        
        VStack(alignment : .leading,spacing : 5){
            Text(tag).fontWeight(.heavy)
            Text(tweets + " Tweets").fontWeight(.light)
        }
    }
}
