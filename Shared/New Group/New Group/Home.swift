//
//  Home.swift
//  Carousel
//
//  Created by Byeon jinha on 2022/04/01.
//

import SwiftUI
struct Post: Identifiable {
    var id = UUID().uuidString
    var postImage : String
    var collectItem : [String]
    var stageNum : Int
}
struct Home: View {
    @Environment(\.presentationMode) var presentationMode
    @State var isOn = [true,false,false]
    @State var currentIndex: Int = 0
    @State var posts : [Post] = [
        Post(postImage: "hamburger1", collectItem: [] ,stageNum:0),
        Post(postImage: "hamburger2", collectItem: [] ,stageNum:1),
        Post(postImage: "hamburger3", collectItem: [] ,stageNum:2)
    ]
    @Namespace var animation

    var body: some View {
        NavigationView {
            VStack{
                VStack{
                    HStack(alignment: .top){
                        Button(action: {   presentationMode.wrappedValue.dismiss()}){
                            Text("Back").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                        }.frame(width:60).padding(EdgeInsets(top:0, leading: 50,bottom:0,trailing:0))  
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
                            .frame(width: 400, height: 400)
                            .cornerRadius(12).offset(y:50)
                        Spacer().frame(height: 70)
                    NavigationLink(destination: StartPage01View( collectItem: post.collectItem, isOn: $isOn, stageImage: .constant(post.postImage) )  ){
                        
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
            .padding(.bottom,20)
        }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true)
        .frame(maxHeight: .infinity, alignment: .top)
 
    
    }
}




struct Home_Previews: PreviewProvider{
    static var previews: some View{
        Home()
    }
}

//TabButton...
struct TabButton : View{
    
    var title: String
    var animation : Namespace.ID
    @Binding var currentTab: String
    
    var body : some View{
    
        Button {
            withAnimation(.spring()){
                currentTab = title
            }
        } label: {
           
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(currentTab == title ? . white : .black)
                .frame(maxWidth : .infinity)
                .padding(.vertical , 8)
                .background(
                   
                    ZStack {
                        if currentTab == title{
                            RoundedRectangle(cornerRadius :10)
                                .fill(.black)
                                .matchedGeometryEffect(id: "TAB", in: animation)
                        }
                    })
        }
    }
}
