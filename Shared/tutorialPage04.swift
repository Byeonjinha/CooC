//
//  tutorialPage02.swift
//  CooC
//
//  Created by Byeon jinha on 2022/04/14.
//

import SwiftUI

struct TutorialPage04View: View {
    @State var transitionView: Int = 0
    var body: some View {
        NavigationView {
        VStack{
            
            HStack{
                if transitionView != 3 {
                    VStack{
                Text("Back").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                NavigationLink(destination: mainPage01View()){Image(systemName: "arrow.backward.circle").resizable().frame(width: 30, height: 30).border(Color.blue) .clipShape(Circle()).padding(EdgeInsets(top:0, leading: 0,bottom:0,trailing:0))
                        }
                    }
                }
                else{
                    Rectangle().frame(width: 30, height: 30).foregroundColor(Color.white)
                }
                Rectangle().frame(width: 200, height: 30).foregroundColor(Color.white)
                if transitionView == 3 {
                    VStack{
                        Text("Start").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                    NavigationLink(destination: Home3()){Image("앞으로가기버튼").resizable().frame(width: 30, height: 30) .clipShape(Circle()).padding(EdgeInsets(top:0, leading: 0,bottom:0,trailing:0))
                    }
                }
                }
                else{
                Rectangle().frame(width: 30, height: 30).foregroundColor(Color.white)
                }
            }
            
            
            HStack{
            Button(action:{            if transitionView == 0{
                transitionView = 4}
                transitionView -= 1
                
            }) {
                Image(systemName: "arrow.backward.circle").renderingMode(.original).resizable()       .frame(width: 30, height:30)
            }
                Text( String(transitionView+1) + " / 4").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                Button(action:{            if transitionView == 3{
                    transitionView = -1}
                    transitionView += 1
                }) {
                    Image("재생").renderingMode(.original).resizable()       .frame(width: 30, height:30)
                    }
        }
        ZStack(alignment: .top) {
            if transitionView == 0  {
                RoundedRectangle(cornerRadius: 20).overlay(
                    
                    VStack{
                    Text("Imagine taking an order from a customer.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        Image("imagineImage").resizable().frame(width: 200, height: 200).cornerRadius(20)
                    })
                    .frame(width:300, height: 500).foregroundColor(Color.mint)
            //밑에서 등장해서 왼쪽으로 사라짐
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing),
                                            removal: AnyTransition.opacity.animation(.easeIn))
            )
            .animation(.easeIn)
            }
            else if transitionView == 1 {
                RoundedRectangle(cornerRadius: 20).overlay(
                    VStack{
                        Text("Customers can order multiple sets of identical burgers.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        Image("hamburgerOrder").resizable().frame(width: 220, height: 200).cornerRadius(10)
        
                    })
                    .frame(width:300, height: 500).foregroundColor(Color.mint)
            //밑에서 등장해서 왼쪽으로 사라짐
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing),
                                            removal: AnyTransition.opacity.animation(.easeIn))
            )
            .animation(.easeIn)
            }
            else if transitionView == 2 {
                RoundedRectangle(cornerRadius: 20).overlay(
                    VStack{
                        Text("The for loop allows you to iterate as many times as you want.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        Image("forloopex").resizable().frame(width: 220, height: 200).cornerRadius(20)
                    })
                    .frame(width:300, height: 500).foregroundColor(Color.mint)
            //밑에서 등장해서 왼쪽으로 사라짐
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing),
                                            removal: AnyTransition.opacity.animation(.easeIn))
            )
            .animation(.easeIn)
            }
            else if transitionView == 3 {
                RoundedRectangle(cornerRadius: 20).overlay(
                    VStack{
                        Text("First, let me write a command to make basic burgers.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                            GifImage("exampleGif3").frame(width: 200, height: 300).cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 4))
                    })
                    .frame(width:300, height: 500).foregroundColor(Color.mint)
            //밑에서 등장해서 왼쪽으로 사라짐
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing),
                                            removal: AnyTransition.opacity.animation(.easeIn))
            )
            .animation(.easeIn)
            }
        }.padding(EdgeInsets(top:0, leading: 0,bottom:100,trailing:0))
            
        }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true)

    }}
