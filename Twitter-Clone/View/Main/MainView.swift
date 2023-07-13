//
//  MainView.swift
//  twitter-clone (iOS)
//

import SwiftUI

struct MainView: View {
    
    // for future use...
    @State var width = UIScreen.main.bounds.width - 90
    // to hide view...
    @State var x = -UIScreen.main.bounds.width + 90
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                    
                    VStack {
                        TopBar(x: $x)
                        
                        Home(x: $x)
                        
                    }
                    
                    
                    
                    SlideMenu()
                        .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
                        .offset(x: x)
                        .background(Color.black.opacity(x == 0 ? 0.5 : 0).ignoresSafeArea(.all, edges: .vertical).onTapGesture {
                            
                            // hiding the view when back is pressed...
                            
                            withAnimation{
                                
                                x = -width
                            }
                        })
                }
                // adding gesture or drag feature...
                .gesture(DragGesture().onChanged({ (value) in
                    
                    withAnimation{
                        
                        if value.translation.width > 0{
                            
                            // disabling over drag...
                            
                            if x < 0{
                                
                                x = -width + value.translation.width
                            }
                        }
                        else{
                            
                            if x != -width{
                                
                                x = value.translation.width
                            }
                        }
                    }
                    
                }).onEnded({ (value) in
                    
                    withAnimation{
                        
                        // checking if half the value of menu is dragged means setting x to 0...
                        
                        if -x < width / 2{
                            
                            x = 0
                        }
                        else{
                            
                            x = -width
                        }
                    }
                }))
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)

        }
        
        
    }
}
