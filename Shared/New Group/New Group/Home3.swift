//
//  Home.swift
//  Carousel
//
//  Created by Byeon jinha on 2022/04/01.
//

import SwiftUI

struct Home3: View {
    @Environment(\.presentationMode) var presentationMode
    @State var isOn = [true,false,false]
    @State var currentIndex: Int = 0
    @State var posts : [Post] = [
        Post(postImage: "hamburgerSetx3", collectItem: [] ,stageNum:0),
        Post(postImage: "hamburgerSetx4", collectItem: [] ,stageNum:1),
        Post(postImage: "hamburgerSetx5", collectItem: [] ,stageNum:2)
    ]

    @Namespace var animation

    var body: some View {
        NavigationView {
            VStack{
                VStack{
                    HStack(alignment: .top){
                        Button(action: {   presentationMode.wrappedValue.dismiss()}){
                            Text("Back").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                        }.frame(width:60).padding(15)
                        Spacer()
                        
                    }
                }
 
        VStack(spacing: 15){
            // Snap Carousel....
            
                Carousel(index: $currentIndex, items: posts, isOn : $isOn ){ post in
                GeometryReader{proxy in
                    let size = proxy.size
                    VStack{
                    Image(post.postImage)
                            .resizable()
                            .frame(width: 300, height: 300)
                            .cornerRadius(12).offset(y:50)
                        Spacer().frame(height: 70)
                    NavigationLink(destination: StartPage05View( collectItem: post.collectItem, isOn: $isOn, stageImage: .constant(post.postImage) )  ){
                        
                        if isOn[post.stageNum] == true {
                            Rectangle().foregroundColor(Color.white).overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.mint, lineWidth: 4))
                        .frame(width: 90, height: 60).overlay( Rectangle().foregroundColor(Color.white).overlay(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.mint, lineWidth: 4))  .frame(width: 80, height: 50)).overlay(Text("Start").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).foregroundColor(Color.black))
                        }
                    }
                    }.frame(width: 670, height: .infinity).padding(EdgeInsets(top:30, leading: 0,bottom:90,trailing:0)).overlay(RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.mint, lineWidth: 3))
                }
                
            }
            
            // Indicator...
            
            HStack(spacing : 10){
            
                ForEach(posts.indices, id: \.self){index in
                    Circle()
                        .fill(Color.black.opacity(currentIndex == index ? 1: 0.1))
                        .frame(width: 10 , height : 10)
                        .scaleEffect(currentIndex == index ? 1.4 : 1)
                        .animation(.spring(), value: currentIndex == index)
      
                }
            }
        }
            .padding(.bottom,120)
        }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true)
        .frame(maxHeight: .infinity, alignment: .top)
 
    
    }
}




