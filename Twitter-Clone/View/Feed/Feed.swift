//
//  Feed.swift
//  twitter-clone (iOS)
//


import SwiftUI

struct Feed: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 18){
                
                // Sample Tweets...
                TweetCellView(tweet: "Hey Tim, are those regular glasses? #WWDC2020", tweetImage: "post")
                
                Divider()
                
                ForEach(1...20,id: \.self){_ in
                    
                    TweetCellView(tweet: sampleText)
                    
                    Divider()
                }
            }
            .padding(.horizontal)
            .padding(.top)
            .zIndex(0)
        })
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
