//
//  tutorialPage02.swift
//  CooC
//
//  Created by Byeon jinha on 2022/04/14.
//

import SwiftUI

struct TutorialPage02View: View {
    @Environment(\.presentationMode) var presentationMode
    @State var transitionView: Int = 0
    var body: some View {
        NavigationView {
        VStack{
            HStack{
                if transitionView != 3 {
                    VStack{
                        HStack(alignment: .top){
                            Button(action: {   presentationMode.wrappedValue.dismiss()}){
                                Text("Back").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                            }.frame(width:60).padding(15)
                            Spacer().frame(width : 320 ).border(Color.red)
                            Button(action:{ transitionView = 3    }){      Text("Skip").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))}.frame(width:40).padding(15)
                            
                        }
                    }
                }
                
                else{
                    Button(action: {   presentationMode.wrappedValue.dismiss()}){
                        Text("Back").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                    }.frame(width:60).padding(15)
                    Rectangle().frame(width: 305, height: 30).foregroundColor(Color.white)
                }
                if transitionView == 3 {
                    VStack{
                        NavigationLink(destination: Home2()){   Text("Start").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).padding(15)
                    }
                }
                }
                else{
                }
            }
            
        ZStack(alignment: .top) {
            if transitionView == 0  {
                RoundedRectangle(cornerRadius: 20).overlay(
                    
                    VStack{
                    Text("Everyday, we do a lot of things without even realizing it.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        Image("dailyRoutine").resizable().frame(width: 250, height: 250).cornerRadius(20)
                    })
                    .frame(width:500, height: 700).foregroundColor(Color.mint)
            //밑에서 등장해서 왼쪽으로 사라짐
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing),
                                            removal: AnyTransition.opacity.animation(.easeIn))
            )
            }
            else if transitionView == 1 {
                RoundedRectangle(cornerRadius: 20).overlay(
                    VStack{
                        Text("In programming, we can generate functions from a collection of commands to perform many tasks.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        Image("dailyfunc").resizable().frame(width: 250, height: 250).cornerRadius(10)
        
                    })
                    .frame(width:500, height: 700).foregroundColor(Color.mint)
            //밑에서 등장해서 왼쪽으로 사라짐
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing),
                                            removal: AnyTransition.opacity.animation(.easeIn))
            )
            }
            else if transitionView == 2 {
                RoundedRectangle(cornerRadius: 20).overlay(
                    VStack{
                        Text("The ingredient options you chose at the previous stage have been set to those corresponding functions.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        Image("hamburgerfunc").resizable().frame(width: 340, height: 300).cornerRadius(10)
                    })
                    .frame(width:500, height: 700).foregroundColor(Color.mint)
            //밑에서 등장해서 왼쪽으로 사라짐
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing),
                                            removal: AnyTransition.opacity.animation(.easeIn))
            )
            }
            else if transitionView == 3 {
                RoundedRectangle(cornerRadius: 20).overlay(
                    VStack{
                        Text(" Now, you can make your own burger meal using these functions.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        HStack{
                            Image("friedChicken").resizable().frame(width: 150, height: 150)
                            Image("hamburger3").resizable().frame(width: 150, height: 150)
                            Image("cola").resizable().frame(width: 150, height: 150)
                            
                        }
                    })
                    .frame(width:500, height: 700).foregroundColor(Color.mint)
            //밑에서 등장해서 왼쪽으로 사라짐
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing),
                                            removal: AnyTransition.opacity.animation(.easeIn))
            )
            }
        }.padding(EdgeInsets(top:0, leading: 0,bottom:0,trailing:0))
            HStack{
            Button(action:{            if transitionView == 0{
                transitionView = 4}
                transitionView -= 1
                
            }) {
                Image(systemName: "backward.fill").renderingMode(.original).resizable()       .frame(width: 30, height:30).foregroundColor(Color.black)
            }
                Text( String(transitionView+1) + " / 4").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                Button(action:{            if transitionView == 3{
                    transitionView = -1}
                    transitionView += 1
                }) {
                    Image(systemName: "forward.fill").renderingMode(.original).resizable()       .frame(width: 30, height:30).foregroundColor(Color.black)
                }
        }

        }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true).padding(EdgeInsets(top:0, leading: 0,bottom:90,trailing:0))  

    }}
