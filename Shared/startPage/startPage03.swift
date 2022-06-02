//
//  startPage01.swift
//  test
//
//  Created by Byeon jinha on 2022/03/26.
//
import Foundation
import Combine
import SwiftUI


struct StartPage03View: View {
    
    @Environment(\.presentationMode) var presentationMode
    var collectItem : [String]
    @Binding var isOn : [Bool]
    @Binding var stageImage: String
    var columns = Array(repeating: GridItem(.flexible(),spacing: 15),count:5)
    @State var dataList = [
        DataItem(collecItem : [] ,title: "friedChicken", color: .green, Text_content: "", Text_content2: "",Text_content3: "",name: "friedChicken()"),
        DataItem(collecItem : [] ,title: "cola", color: .green, Text_content: "", Text_content2: "",Text_content3: "",name: "cola()"),
        DataItem(collecItem : [] ,title: "hamburger1", color: .orange, Text_content: "", Text_content2: "func hamburger() {\n      heel() \n      meatPatty() \n      cheese() \n      tomato() \n      crown() \n}" ,Text_content3: "",name: "hamburger()"),
        DataItem(collecItem : [] ,title: "hamburger2", color: .orange, Text_content: "", Text_content2: "func fishburger() {\n      heel() \n      salary() \n      fishPatty() \n      cucumber() \n      club()      \n      friedEgg() \n}" ,Text_content3: "",name: "fishburger()"),
        DataItem(collecItem : [] ,title: "hamburger3", color: .orange, Text_content: "", Text_content2:  "func chickenburger() {\n      heel() \n      salary() \n      cucumber() \n      chickenPatty() \n      emmentalCheese()      \n      tomato()      \n      onion()      \n      crown()\n}" ,Text_content3: "",name: "chickenburger()"),
        DataItem(collecItem : [] ,title: "cheeseStick2", color: .orange, Text_content: "", Text_content2: "" ,Text_content3: "",name: "cheeseSticks()"),
        DataItem(collecItem : [] ,title: "frenchFrices", color: .orange, Text_content: "", Text_content2: "" ,Text_content3: "",name: "frenchFrices()"),
        DataItem(collecItem : [] ,title: "icecream", color: .orange, Text_content: "", Text_content2: "" ,Text_content3: "",name: "icecream()")
        
    ]
    @State var dataList2 = [
        DataItem(collecItem : [] ,title: "hamburgerTray", color: .yellow , Text_content: "" , Text_content2: "" ,Text_content3: "",name: "hamburgerTray()"),
        DataItem(collecItem : [] ,title: "yellowmemo", color: .yellow , Text_content: "" , Text_content2: "" ,Text_content3: "",name: "yellowmemo()")
    ]
    
    @State var menuList =  DataItem(collecItem : [] ,title: "", color: .orange, Text_content: "", Text_content2: "",Text_content3: "",name: "" )
    @State var draggedItem: DataItem?

    var body: some View {
        NavigationView {
            VStack{
                HStack{
                    VStack{
                        HStack{
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()}){
                                Text("Back")
                                    .font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                            }
                            .frame(width:60).padding(15)
                           
                            Spacer()
                        }
                    } 
                  
                }
                
                Image(stageImage).resizable().frame(width: 100, height: 100).padding(15).overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.orange, lineWidth: 2) )
                LazyVGrid(columns: columns)
{
                ForEach(dataList, id:\.self) { dataItem in
                    Image(dataItem.title).resizable().renderingMode(.original).clipped().frame(width: 60, height: 60)
                                 .onDrag{
                                     self.draggedItem = dataItem
                                     return NSItemProvider(item: nil, typeIdentifier: dataItem.title)
                                 }
                                 .onDrop(of: [dataItem.title],
                                         delegate: MyDropDelegate(currentItem: dataItem,
                                                                  dataList: $dataList, dataList2: $dataList2,
                                                                  draggedItem:$draggedItem)).overlay(          Text(dataItem.Text_content)).font(Font.custom("Noteworthy", size: 13, relativeTo: .title))
                }
} //Hstack
                ForEach(dataList2, id:\.self) { dataItem in
                    if dataItem.title == "hamburgerTray" {
                    Image(dataItem.title).resizable().renderingMode(.original).clipped().frame(width: 350, height: 220)
                                 .onDrag{
                                     self.draggedItem = dataItem
                                     return NSItemProvider(item: nil, typeIdentifier: dataItem.title)
                                 }
                                 .onDrop(of: [dataItem.title],
                                         delegate: MyDropDelegate(currentItem: dataItem,
                                                                  dataList: $dataList, dataList2: $dataList2,
                                                                  draggedItem: $draggedItem ))
                                                                    .overlay( Text(dataItem.Text_content).offset(y:0)).font(Font.custom("Noteworthy", size: 10, relativeTo: .title))
                    } else if dataItem.title == "yellowmemo"  {
                        Image(dataItem.title).resizable().renderingMode(.original).clipped().frame(width: 350, height: 260).cornerRadius(30)
                                     .onDrag{
                                         self.draggedItem = dataItem
                                         return NSItemProvider(item: nil, typeIdentifier: dataItem.title)
                                     }
                                     .onDrop(of: [dataItem.title],
                                             delegate: MyDropDelegate(currentItem: dataItem,
                                                                      dataList: $dataList, dataList2: $dataList2,
                                                                      draggedItem: $draggedItem )).overlay(
                                                                        VStack{
                                                       
                                                                        HStack{   Rectangle().frame(width: 200, height: 30).foregroundColor(Color.white).opacity(0)
                                                                        Button(action:{
                                         dataList2[dataList2.endIndex-1].Text_content = ""
                                         dataList2[dataList2.endIndex-1].collecItem.removeAll()
                                         }
                                                                        ){Image(systemName: "clear.fill").resizable().frame(width: 30, height: 30).padding(EdgeInsets(top:0, leading: 0,bottom:0,trailing:0)).foregroundColor(Color.black)}}
                                                                            Rectangle().frame(width: 200, height: 70).foregroundColor(Color.white).opacity(0)
                                                                            
                                                                            HStack{
                                                                                Rectangle().frame(width: 200, height: 30).foregroundColor(Color.white).opacity(0)
                                                                                NavigationLink(destination: StartPage04View(collecItem:  .constant( dataList2[dataList2.endIndex-1].collecItem   ), stageImage: $stageImage )){Image(systemName: "play.fill").resizable().frame(width: 25, height: 25).foregroundColor(Color.black)
                                                                                }
                                                                            }
                                                                            Rectangle().frame(width: 200, height: 30).foregroundColor(Color.white).opacity(0)
                                                                        }
                                                                      ).overlay( Text(dataItem.Text_content).offset(y:-30)).font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                    }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true)  }}


