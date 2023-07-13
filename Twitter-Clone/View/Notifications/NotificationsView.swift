//
//  NotificationsView.swift
//  twitter-clone (iOS)
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack {
            ScrollView {
                ForEach(0..<9) { i in
                    
                    NotificationCell()
                    
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
