//
//  StartingPage.swift
//  Antheia
//
//  Created by Fanny Li on 7/24/21.
//

import SwiftUI

struct StartingPage : View {
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        
            ZStack {
                // background
                Rectangle().foregroundColor(Color(red: 0.31, green: 0.67, blue: 0.41)).opacity(0.6).edgesIgnoringSafeArea(.all)
                
            
                ZStack{
                    Circle().foregroundColor(Color(red: 0.92, green: 0.82, blue: 0.72)).scaleEffect(0.8)
                    VStack{
                        
                        // Sign Up Button
                        Button(action: {
                            viewRouter.currentPage = .signUpPage
                        }, label: {
                            Text("Sign Up").foregroundColor(.black).font(.title3).fontWeight(.semibold).multilineTextAlignment(.center).padding(.all, 10).padding(.horizontal, 50).background(Color(red: 0.87, green: 0.59, blue: 0.59).opacity(0.8)).cornerRadius(15)
                        }).padding(.bottom, 20)
                        
                        // Login Button
                        Button(action: {
                            viewRouter.currentPage = .loginPage
                        }, label: {
                            Text("Login").foregroundColor(.black).font(.title3).fontWeight(.semibold).multilineTextAlignment(.center).padding(.all, 10).padding(.horizontal, 62).background(Color(red: 0.87, green: 0.59, blue: 0.59).opacity(0.8)).cornerRadius(15)
                        })
                    }
                }.edgesIgnoringSafeArea(.all)
                VStack{
                    // Name of App
                    Text("App Name").fontWeight(.heavy).font(.title).padding([.top, .bottom], 100)
                
                    Spacer()
                    // Image of Logo?
                    Image("footprint").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 200, alignment: .center).padding(.leading, 120).padding(.bottom, 100)
                
                    HStack{
                        // Social Media
                        Spacer()
                        Button(action: {}, label: {
                            Image("facebook-logo").resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 60, alignment: .center)
                        })
                        Spacer()
                        Button(action: {}, label: {
                            Image("insta-logo").resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 60, alignment: .center)
                        })
                        Spacer()
                        Button(action: {}, label: {
                            Image("twitter-logo").resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 60, alignment: .center)
                        })
                        Spacer()
                    }.padding(.horizontal, 40)
                    

                }
            }
        
        
    }
}


struct StartingPage_Preview: PreviewProvider {
    static var previews: some View {
        StartingPage(viewRouter: ViewRouter())
    }
}
