//
//  tutorialPage01.swift
//  CooC
//
//  Created by Byeon jinha on 2022/03/31.
//
//
import SwiftUI

struct TutorialPage01View: View {
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
                        Spacer().frame(width : 320 )
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
                    NavigationLink(destination: Home()){   Text("Start").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).padding(15)
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
                Text("Have you ever made burgers according to a recipe?").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                    Image("hamburger1").resizable().frame(width: 200, height: 200)
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
                    Text("By choosing the following ingredients, you can make the burger that you want. ").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                    GifImage("exampleGif").frame(width: 400, height: 350).cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 4))
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
                    Text("Your goal is to make a burger choosing some ingredient options in the right order.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                    ZStack{
                        Image("hamburger3").resizable().frame(width: 100, height: 100).offset(x:-50,y:0)
                        Image("hamburger2").resizable().frame(width: 100, height: 100).offset(x:50, y:0)
                        Image("hamburger1").resizable().frame(width: 100, height: 100).offset(x:0,y:60)
                   
                       
                    }
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
                    Text("First, please make a burger basically.").font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).padding(20).foregroundColor(Color.white)
                        GifImage("exampleGif2").frame(width: 300, height: 450).cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.white, lineWidth: 4))
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

