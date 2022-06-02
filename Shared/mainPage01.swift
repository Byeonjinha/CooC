//
//  ContentView.swift
//  Shared
//
//  Created by Byeon jinha on 2022/03/25.
//
import SwiftUI
struct mainPage01View: View {
    var body: some View {
        NavigationView {
            VStack{
            Text("CooC")
                .foregroundColor(.mint)
                .font(Font.custom("Noteworthy", size: 90, relativeTo: .title))
                .fontWeight(.bold)
                .padding(EdgeInsets(top:0, leading: 0,bottom:0,trailing:0))
                
                Text("Code like you cook !")  .font(Font.custom("Noteworthy", size: 30, relativeTo: .title)).foregroundColor(Color.cyan)
                Image("hamburger1")
                .resizable()
                .frame(width: 200, height: 200)
                    .shadow(color: .gray, radius: 10, x: 0, y: 10)
                  HStack{
                      NavigationLink(destination: TutorialPage01View()
//                                        StartPage01View()
                          .edgesIgnoringSafeArea(.all)
                      ){
                          Text("Command")  .font(Font.custom("Noteworthy", size: 30, relativeTo: .title))
                        
                              .fontWeight(.bold)
                              .foregroundColor(.white)
                              .padding(30)
                              .background(Color.mint)
                              .cornerRadius(20)
                      }
                      NavigationLink(destination: TutorialPage02View()
                          .edgesIgnoringSafeArea(.all)
                      ){
                          Text("Function").font(Font.custom("Noteworthy", size: 30, relativeTo: .title))
                              .fontWeight(.bold)
                              .foregroundColor(.white)
                              .padding(30)
                              .background(Color.mint)
                              .cornerRadius(20)
                      }
                      NavigationLink(destination: TutorialPage03View()
                          .edgesIgnoringSafeArea(.all)
                      ){
                          Text("For Loop").font(Font.custom("Noteworthy", size: 30, relativeTo: .title))
                              .fontWeight(.bold)
                              .foregroundColor(.white)
                              .padding(30)
                              .background(Color.mint)
                              .cornerRadius(20)
                      }
                  }.padding(EdgeInsets(top:50, leading: 0,bottom:100,trailing:0)) // Hstack
            }.padding(EdgeInsets(top:0, leading: 0,bottom:0,trailing:0))
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true)
    }
}
struct mainPage01View_Previews: PreviewProvider {
    static var previews: some View {
        mainPage01View()
    }
}
