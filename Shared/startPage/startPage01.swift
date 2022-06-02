//
//  startPage01.swift
//  test
//
//  Created by Byeon jinha on 2022/03/26.
//
import Foundation
import Combine
import SwiftUI

struct DataItem : Hashable{
    var collecItem : [String]
    var title: String
    var color: Color
    var Text_content: String
    var Text_content2 : String
    var Text_content3 : String
    var name : String
    init(collecItem : [String] , title: String, color: Color, Text_content : String, Text_content2 : String, Text_content3 : String, name : String ) {
        self.collecItem = collecItem
        self.title = title
        self.color = color
        self.Text_content = Text_content
        self.Text_content2 = Text_content2
        self.Text_content3 = Text_content3
        self.name = name
    }
}

struct StartPage01View: View {
    
    @Environment(\.presentationMode) var presentationMode
    var collectItem : [String]
    @Binding var isOn : [Bool]
    @Binding var stageImage: String
    var columns = Array(repeating: GridItem(.flexible(),spacing: 15),count:5)
    @State var dataList = [
        DataItem(collecItem : [] ,title: "crown", color: .green, Text_content: "", Text_content2: "", Text_content3: "",name: "crown()"),
        DataItem(collecItem : [] ,title: "club", color: .green, Text_content: "", Text_content2: "",Text_content3: "",name: "club()"),
        DataItem(collecItem : [] ,title: "heel", color: .orange, Text_content: "", Text_content2: "" ,Text_content3: "",name: "heel()"),
        DataItem(collecItem : [] ,title: "meatPatty", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "meatPatty()"),
        DataItem(collecItem : [] ,title: "fishPatty", color: .orange, Text_content: "", Text_content2: "" ,Text_content3: "",name: "fishPatty()"),
        DataItem(collecItem : [] ,title: "chickenPatty", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "chickenPatty()"),
        DataItem(collecItem : [] ,title: "lettuce", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "lettuce()"),
        DataItem(collecItem : [] ,title: "salary", color: .yellow , Text_content: "" , Text_content2: "" ,Text_content3: "",name: "salary()"),
        DataItem(collecItem : [] ,title: "mushroom", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "mushroom()"),
        DataItem(collecItem : [] ,title: "onion", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "onion()"),
        DataItem(collecItem : [] ,title: "paprika", color: .orange, Text_content: "", Text_content2: "" ,Text_content3: "",name: "paprika()"),
        DataItem(collecItem : [] ,title: "tomato", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "tomato()"),
        DataItem(collecItem : [] ,title: "pickle", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "pickle()"),
        DataItem(collecItem : [] ,title: "cucumber", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "cucumber()"),
        DataItem(collecItem : [] ,title: "redPaprika", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "redPaprika()"),
        DataItem(collecItem : [] ,title: "bacon", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "bacon()"),
        DataItem(collecItem : [] ,title: "salami", color: .orange, Text_content: "", Text_content2: "" ,Text_content3: "",name: "salami()"),
        DataItem(collecItem : [] ,title: "friedEgg", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "friedEgg()"),
        DataItem(collecItem : [] ,title: "emmentalCheese", color: .orange, Text_content: "" , Text_content2: "",Text_content3: "",name: "emmentalCheese()"),
        DataItem(collecItem : [] ,title: "cheese", color: .orange, Text_content: "", Text_content2: "" ,Text_content3: "",name: "cheese()"),
    ]
    @State var dataList2 = [
        DataItem(collecItem : [] ,title: "greenmemo", color: .yellow , Text_content: "" , Text_content2: "" ,Text_content3: "",name: "greenmemo()"),
        DataItem(collecItem : [] ,title: "yellowmemo", color: .yellow , Text_content: "" , Text_content2: "" ,Text_content3: "",name: "memo()"),
        
    ]
    @State var menuList =  DataItem(collecItem : [] ,title: "", color: .orange, Text_content: "", Text_content2: "",Text_content3: "",name: "" )
    @State var draggedItem: DataItem?

    var body: some View {
        NavigationView {
            VStack(alignment: .center){
                VStack{
                    HStack(alignment: .top){
                        Button(action: {   presentationMode.wrappedValue.dismiss()}){
                            Text("Back").font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                        }.frame(width:60).padding(15)
                        Spacer()
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
                     if dataItem.title == "yellowmemo"  {
                         Image(dataItem.title).resizable().renderingMode(.original).clipped().frame(width: 380, height:330).cornerRadius(30)
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
                                                                            NavigationLink(destination: StartPage02View(collecItem:  .constant( dataList2[dataList2.endIndex-1].collecItem   ), stageImage: $stageImage )){Image(systemName: "play.fill").resizable().frame(width: 25, height: 25).foregroundColor(Color.black)
                                                                            }
                                                                            }
                                                                            Rectangle().frame(width: 200, height: 30).foregroundColor(Color.white).opacity(0)
                                                                        }
                                                                            ).overlay( Text( dataItem.Text_content).offset(y:-30)).font(Font.custom("Noteworthy", size: 20, relativeTo: .title))
                     }
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle()).navigationBarHidden(true)  }}
struct MyDropDelegate : DropDelegate {
    var currentItem: DataItem
    @Binding var dataList: [DataItem]
    @Binding var dataList2 : [DataItem]
    @Binding var draggedItem: DataItem?
    // 드랍에서 벗어났을때
    func dropExited(info: DropInfo) {} // 드랍 처리
    func performDrop(info: DropInfo) -> Bool {
        guard let draggedItem = self.draggedItem else { return false }
        if currentItem.title == "yellowmemo" && draggedItem.title != "yellowmemo"   && draggedItem.title != "greenmemo"     {
        dataList2[dataList2.endIndex-1].Text_content = dataList2[dataList2.endIndex-1].Text_content +  "\n" + draggedItem.name
        dataList2[dataList2.endIndex-1].Text_content3 = dataList2[dataList2.endIndex-1].Text_content3 +  "\n     " + draggedItem.name
        dataList2[dataList2.endIndex-1].collecItem.append(draggedItem.title)
        }
        return true
    }
    // 드랍변경
    func dropUpdated(info: DropInfo) -> DropProposal? {
        return nil
    }
    // 드랍 유효 여부
    func validateDrop(info: DropInfo) -> Bool {
        return true
    }
    // 드랍 시작
    func dropEntered(info: DropInfo) {
        guard let draggedItem = self.draggedItem else { return }
        
        if draggedItem.title == "hamburger1" || draggedItem.title == "hamburger2" || draggedItem.title == "hamburger3"  {
            dataList2[dataList2.endIndex-2].Text_content = draggedItem.Text_content2
        }
        // 드래깅된 아이템이랑 현재 내 아이템이랑 다르면
        if draggedItem.title == "yellowmemo"{
            return
        }
        if draggedItem != currentItem && currentItem.title != "yellowmemo"   && currentItem.title != "hamburgerTray"       {
            let from = dataList.firstIndex(of: draggedItem)!
            let to = dataList.firstIndex(of: currentItem)!
            withAnimation{
                self.dataList.move(fromOffsets: IndexSet(integer: from), toOffset: to>from ? to+1:to)
            }
        }
    }
}
