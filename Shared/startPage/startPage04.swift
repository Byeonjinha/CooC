//
//  startPage01.swift
//  test
//
//  Created by Byeon jinha on 2022/03/26.
//

import SwiftUI

struct StartPage04View: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var collecItem: [String]
    @Binding var stageImage: String
  
    var columns = Array(repeating: GridItem(.flexible(),spacing: 15),count:4)
    var body: some View {
        VStack{
            HStack{
            Button(action: {   presentationMode.wrappedValue.dismiss()}){
                Text("Back").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
            }.frame(width:60)
            Spacer()
               
            }.padding(EdgeInsets(top:0, leading: 50,bottom:190,trailing:50))
            
            if stageImage == "hamburgerSet" && collecItem.sorted(by: < ) == ["cola","frenchFrices","hamburger1"] {

                HStack{
                   
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80)
                        }
                    }
                }
                
                GifImage("correctGif").frame(width: 250 , height: 200)
                Text("Congratulations!!" ).font(Font.custom("Noteworthy", size: 40, relativeTo: .title))
                Text("You made a perfect hamburger set.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                
            }
            else if stageImage == "friedEggburgerSet" && collecItem.sorted(by: < )  == ["cheeseStick2","cola","hamburger2"] {
                HStack{
                   
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80)
                        }
                    }
                }
                
                GifImage("correctGif").frame(width: 250 , height: 200)
                Text("Congratulations!!" ).font(Font.custom("Noteworthy", size: 40, relativeTo: .title))
                Text("You made a perfect hamburger set.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
            }
            else if stageImage == "chickenSet" && collecItem.sorted(by: < )  == ["cola","friedChicken","hamburger3"] {
                HStack{
                   
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80)
                        }
                    }
                }
                
                GifImage("correctGif").frame(width: 250 , height: 200)
                Text("Congratulations!!" ).font(Font.custom("Noteworthy", size: 40, relativeTo: .title))
                Text("You made a perfect hamburger set.").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
            }
            else if stageImage == "hamburgerSet" && collecItem.sorted(by: < ) != ["cola","frenchFrices","hamburger1"]  {
                if collecItem .count > 3 {
                LazyVGrid(columns: columns , alignment: .trailing){
                   
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80)
                        }
                    }
                }
                Text("Would you like to check the recipe?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
                Image("hamburger4R").resizable().frame(width: 250, height: 250 )
            }
                else{
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80)
                            }
                        }
                    }
                    Text("Would you like to check the recipe?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
                    Image("hamburger4R").resizable().frame(width: 250, height: 250 )
                }
            }
            else if stageImage == "friedEggburgerSet" && collecItem.sorted(by: < ) != ["cheeseStick2","cola","hamburger2"]  {
                if collecItem .count > 3 {
                LazyVGrid(columns: columns , alignment: .trailing){
                   
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80)
                        }
                    }
                }
                Text("Would you like to check the recipe?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
                Image("hamburger5R").resizable().frame(width: 250, height: 250 )
            }
                else{
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80)
                            }
                        }
                    }
                    Text("Would you like to check the recipe?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
                    Image("hamburger5R").resizable().frame(width: 250, height: 250 )
                }
            }
            else if stageImage == "chickenSet" && collecItem.sorted(by: < ) != ["cola","friedChicken","hamburger3"]  {
                if collecItem .count > 3 {
                LazyVGrid(columns: columns , alignment: .trailing){
                   
                    ForEach((0...collecItem.count), id: \.self){
                        let k = $0
                        if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80)
                        }
                    }
                }
                Text("Would you like to check the recipe?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
                Image("hamburger6R").resizable().frame(width: 250, height: 250 )
            }
                else{
                    HStack{
                       
                        ForEach((0...collecItem.count), id: \.self){
                            let k = $0
                            if k != 0  {Image(String(collecItem[k-1])).resizable().frame(width: 80, height: 80)
                            }
                        }
                    }
                    Text("Would you like to check the recipe?").font(Font.custom("Noteworthy", size: 25, relativeTo: .title))
                    Image("hamburger6R").resizable().frame(width: 250, height: 250 )
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true)  
        
    }
}

