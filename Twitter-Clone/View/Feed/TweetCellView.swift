//
//  TweetView.swift
//  twitter-clone (iOS)
//


import SwiftUI

struct TweetCellView: View {
    var tweet: String
    var tweetImage: String?
    
    var body: some View {
        VStack {
            
            // Cell Top
            
            HStack(alignment: .top, spacing: 10, content: {
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10, content: {
                    
                    (
                        
                        Text("Cem  ")
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                            
                            +
                            
                            Text("@cem_salta")
                            .foregroundColor(.gray)
                    )
                    
                    Text(tweet)
                        .frame(maxHeight: 100, alignment: .top)
                    
                    if let image = tweetImage {
                        
                        GeometryReader{ proxy in
                            
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }
                        .frame(height: 250)
                    }
                })
            })
            
            
            // Cell Bottom
            
            
            HStack(spacing : 50) {
                
                Button(action: {
                    
                }) {
                    
                    Image("Comments").resizable().frame(width: 16, height: 16)
                    
                }.foregroundColor(.gray)
                
                Button(action: {
                    
                }) {
                    
                    Image("Retweet").resizable().frame(width: 18, height: 14)
                    
                }.foregroundColor(.gray)
                
                Button(action: {
                    
                }) {
                    
                    Image("love").resizable().frame(width: 18, height: 15)
                    
                }.foregroundColor(.gray)
                
                Button(action: {
                    
                }) {
                    
                    Image("upload").resizable().renderingMode(.template).frame(width: 16, height: 16)
                    
                }.foregroundColor(.gray)
            }
            .padding(.top, 4)
        }
    }
}

var sampleText = "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book."
