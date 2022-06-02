//
//  startPage01.swift
//  test
//
//  Created by Byeon jinha on 2022/03/26.
//

import SwiftUI

struct StartPage02View: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var collecItem: [String]
    @Binding var stageImage: String
    var body: some View {
        NavigationView {
   
        VStack{
            HStack{
            Button(action: {   presentationMode.wrappedValue.dismiss()}){
                Text("Back").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
            }.frame(width:60)
            Spacer()
               
            }.padding(EdgeInsets(top:0, leading: 50,bottom:190,trailing:50))
            
            if stageImage == "hamburger1" && collecItem == ["heel","meatPatty","cheese","tomato","crown"] {
                ZStack{
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 100, height: 100).offset(y:CGFloat(-20 * Int(k)))
                        }
                    }
                }
//                GifImage("correctGif").frame(width: 250 , height: 200)
                Text("Congratulations!!" ).font(Font.custom("Noteworthy", size: 40, relativeTo: .title))
                Text("You made a perfect hamburger.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                
            }
            else if stageImage == "hamburger2" && collecItem == ["heel","salary","fishPatty","cucumber","club","friedEgg"] {
                    ZStack{
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 100, height: 100).offset(y:CGFloat(-15 * Int(k)))
                            }
                        }
                    }
//                GifImage("correctGif").frame(width: 250 , height: 200)
                Text("Congratulations!!" ).font(Font.custom("Noteworthy", size: 40, relativeTo: .title))
                Text("You made a perfect hamburger.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                Spacer().frame(height:100)
            }
            else if stageImage == "hamburger3" && collecItem == ["heel","salary","cucumber","chickenPatty","emmentalCheese","tomato","onion","crown"] {
                ZStack{
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 100, height: 100).offset(y:CGFloat(-15 * Int(k)))
                        }
                    }
                }
//                GifImage("correctGif").frame(width: 250 , height: 200)
                Text("Congratulations!!" ).font(Font.custom("Noteworthy", size: 40, relativeTo: .title))
                Text("You made a perfect hamburger.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                Spacer().frame(height:100)
            }
            else if stageImage == "hamburger1" && collecItem != ["heel","meatPatty","cheese","tomato","crown"]  {
                ZStack{
                   
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 100, height: 100).offset(y:CGFloat(-20 * Int(k)))
                        }
                    }
                }
                Text("Would you like to check the recipe?").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))

                Image("hamburger1R").resizable().frame(width: 250, height: 250 )
            }
            else if stageImage == "hamburger2" && collecItem != ["heel","salary","fishPatty","cucumber","club","friedEgg"] {
                ZStack{
                   
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 100, height: 100).offset(y:CGFloat(-20 * Int(k)))
                        }
                    }
                }
                Text("Would you like to check the recipe?").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))

                Image("hamburger2R").resizable().frame(width: 250, height: 250 )
            }
            else if stageImage == "hamburger3" && collecItem != ["heel","salary","cucumber","chickenPatty","emmentalCheese","tomato","onion","crown"] {
                ZStack{
                   
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 100, height: 100).offset(y:CGFloat(-20 * Int(k)))
                        }
                    }
                }
                Text("Would you like to check the recipe?").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))

                Image("hamburger3R").resizable().frame(width: 250, height: 250 )
            }
        }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true)  
    }
}

