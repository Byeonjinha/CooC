//
//  tutorialPage02.swift
//  CooC
//
//  Created by Byeon jinha on 2022/04/14.
//

import SwiftUI

struct TutorialPage03View: View {
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
                        NavigationLink(destination: Home3()){   Text("Start").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).padding(15)
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
                    Text("Imagine you are taking an order from a customer.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        Image("imagineImage").resizable().frame(width: 250, height: 250).cornerRadius(20)
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
                        Text("The customer can order the several sets of the same burger meal.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        Image("hamburgerOrder").resizable().frame(width: 360, height: 300).cornerRadius(10)
        
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
                        Text("Using the For loop, you can deal with these repetitive tasks.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        Image("forloopex").resizable().frame(width: 360, height: 300).cornerRadius(40)
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
                        Text("Then please complete your  burger meal.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                            GifImage("exampleGif3").frame(width: 310, height: 450).cornerRadius(10)
                            .overlay(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 4))
                    })
                    .frame(width:500, height: 700).foregroundColor(Color.mint)
            //밑에서 등장해서 왼쪽으로 사라짐
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .trailing),
                                            removal: AnyTransition.opacity.animation(.easeIn))
            )
            }
        }.padding(EdgeInsets(top:0, leading: 0,bottom:00,trailing:0))
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
