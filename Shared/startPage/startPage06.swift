//
//  startPage01.swift
//  test
//
//  Created by Byeon jinha on 2022/03/26.
//

import SwiftUI

struct StartPage06View: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var collecItem: [String]
    @Binding var stageImage: String
    @Binding var count : Int
    var columns = Array(repeating: GridItem(.flexible(),spacing: 15),count:4)
    var body: some View {
        VStack{
            HStack{
            Button(action: {   presentationMode.wrappedValue.dismiss()}){
                Text("Back").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
            }.frame(width:60)
            Spacer()
               
            }.padding(EdgeInsets(top:0, leading: 50,bottom:80,trailing:50))
            if stageImage == "hamburgerSetx3" && collecItem.sorted(by: < )  == ["cola","frenchFrices","hamburger1"]  && count == 3 {
                ForEach(1...count , id:\.self) {
                    let k2 = $0
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80).offset( x: CGFloat(k2*20 - 40), y : CGFloat(k2 * (-60) + 150) )
                            }
                        }
                    }
                }
                GifImage("correctGif").frame(width: 250 , height: 200)
                Text("Congratulations!!" ).font(Font.custom("Noteworthy", size: 40, relativeTo: .title))
                Text("You made a perfect hamburger sets.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
            }
            
            else if stageImage == "hamburgerSetx3" && collecItem.sorted(by: < )  == ["cola","frenchFrices","hamburger1"]  && count != 3 {
                ForEach(1...count , id:\.self) {
                    let k2 = $0
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80).offset( x:0 , y : 0 )
                            }
                        }
                    }
                }
                Text("Could you please check the set composition or the number of sets?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
            }
            
            
            else if stageImage == "hamburgerSetx3" && collecItem.sorted(by: < )  != ["cola","frenchFrices","hamburger1"]  {
                ForEach(1...count , id:\.self) {
                    let k2 = $0
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80).offset( x:0 , y : 0 )
                            }
                        }
                    }
                }
                Text("Could you please check the set composition or the number of sets?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
            }

            else if stageImage == "hamburgerSetx4" && collecItem.sorted(by: < )  == ["cola","hamburger2","icecream"]  && count == 4 {
                ForEach(1...count , id:\.self) {
                    let k2 = $0
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80).offset( x: CGFloat(k2*20 - 50), y : CGFloat(k2 * (-60) + 130) )
                            }
                        }
                    }
                }
                GifImage("correctGif").frame(width: 250 , height: 200).offset(y:-100)
                Text("Congratulations!!" ).font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).offset(y:-100)
                Text("You made a perfect hamburger set.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).offset(y:-100)
            }
            
            else if stageImage == "hamburgerSetx4" && collecItem.sorted(by: < )  == ["cola","hamburger2","icecream"]  && count != 4 {
                ForEach(1...count , id:\.self) {
                    let k2 = $0
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80).offset( x:0 , y : 0 )
                            }
                        }
                    }
                }
                Text("Could you please check the number of hamburger sets?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
            }
            
            
            else if stageImage == "hamburgerSetx4" && collecItem.sorted(by: < )  != ["cola","hamburger2","icecream"]  {
                ForEach(1...count , id:\.self) {
                    let k2 = $0
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80).offset( x:0 , y : 0 )
                            }
                        }
                    }
                }
                Text("Could you please check the number of hamburger sets?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
            }
            else if stageImage == "hamburgerSetx5" && collecItem.sorted(by: < )  == ["cola","friedChicken","hamburger3"]   && count == 5 {
                ForEach(1...count , id:\.self) {
                    let k2 = $0
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80).offset( x: CGFloat(k2*20 - 60), y : CGFloat(k2 * (-60) + 150) )
                            }
                        }
                    }
                }
                GifImage("correctGif").frame(width: 250 , height: 200).offset(y:-150)
                Text("Congratulations!!" ).font(Font.custom("Noteworthy", size: 40, relativeTo: .title)).offset(y:-150)
                Text("You made a perfect hamburger set.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title)).offset(y:-150)
            }
            
            else if stageImage == "hamburgerSetx5" && collecItem.sorted(by: < )  == ["cola","friedChicken","hamburger3"]   && count != 5 {
                ForEach(1...count , id:\.self) {
                    let k2 = $0
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80).offset( x:0 , y : 0 )
                            }
                        }
                    }
                }
                Text("Could you please check the number of hamburger sets?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
            }
            
            
            else if stageImage == "hamburgerSetx5" && collecItem.sorted(by: < )  != ["cola","friedChicken","hamburger3"]   {
                ForEach(1...count , id:\.self) {
                    let k2 = $0
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80).offset( x:0 , y : 0 )
                            }
                        }
                    }
                }
                Text("Could you please check the number of hamburger sets?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
            }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true)  
        
    }
}

