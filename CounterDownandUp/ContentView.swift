//
//  ContentView.swift
//  CounterDownandUp
//
//  Created by Muneerah Aledaily on 08/01/2023.
//

import SwiftUI

struct ContentView: View {
    let title:LocalizedStringKey = "Countdown"
  
    @State var index = 0
    
    
    var body: some View {
        NavigationView{
            
            VStack{
            
                TabView(selection: self.$index){
                    
                    GridView(count_Data: countdown_Data)
                        .tag(0)
                 
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
            
            //.navigationTitle("العداد التنازلي")
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
            leading: NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true) , label:{  Image(systemName: "plus.circle.fill")}))
            .accentColor(Color("Tcolor"))
            
           
        }
       
    }
        
}
//Grid view
struct GridView : View {
    let deleteswipe:LocalizedStringKey = "Delete"
    let editeswipe:LocalizedStringKey = "Edit"
    let dayslefttitle:LocalizedStringKey = "day left"
    var count_Data : [Countdata]
   // var columns = Array(repeating: GridItem(.flexible()), count: 1)
    // let string = NSLocalizedString("welcome", comment: "")
    var body: some View{
        
           // ScrollView{
               // LazyVGrid(columns: columns){
        List(0 ..< 1) { item in
            ForEach(count_Data){countdata in
                HStack{
                    Image(systemName: "arrow.down.circle.fill")
                        .font(.system(size: 70))
                        .foregroundColor(Color(countdata.backgroundcolor))
                    VStack(alignment: .leading){
                        Text (countdata.name)
                            .font (.title)
                            .fontWeight(.bold)
                        Text(countdata.date)
                        
                        Rectangle()
                            .frame(width: 160, height: 1)
                            .foregroundColor(.red.opacity(0))
                        
                    }
                    
                    ZStack{
                           Rectangle()
                          .frame(width: 90, height: 100)
                          .foregroundColor(.white.opacity(0.49))
                          .cornerRadius(0)
                    
                    VStack{
                        //Image(systemName: "ellipsis")
                        //Image(systemName: "ellipsis.circle")
                        // .foregroundColor(.gray)
                        //  .padding(.trailing,50)
                        //Text("باقي")
                        Text (countdata.days)
                            .font (.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(countdata.backgroundcolor))
                        Text(dayslefttitle)
                    }
                    }
                    
                   
                          
                }
                
                    //.background(Color(countdata.backcolor).opacity(0.60))
                    //.foregroundColor(Color(countdata.backcolor)).opacity(0.60)
                    //.cornerRadius(27)
                    
                }
                .swipeActions(edge: .trailing) {
                    Button {
                        print("Delete")
                    } label: {
                        Label(deleteswipe, systemImage: "trash")
                    }.tint(.red)
                }
                .swipeActions(edge: .trailing) {
                    Button {
                        print("Edit")
                            
                    } label: {
                        Label(editeswipe, systemImage: "square.and.pencil")
                    }.tint(Color("Tcolor"))
                        .accessibility(label: Text("Add new countdown counter"))
                }
                
                // .listRowSeparator(.hidden)
            }
           
       // .scrollContentBackground(.hidden)
            
        
            }
        
        }
   // }


//Dashboard Grid Model size
struct Countdata : Identifiable {
    var id : Int
    var name : String
    var backgroundcolor : String
    var date: String
    var days : String
   
    
}

var countdown_Data = [
//var fit_Data = [
    Countdata(id: 0, name: "عودة صديقتي ", backgroundcolor: "Pinkcolor", date: "١٧ جون ٢٠٢٣", days:"300"),
    Countdata(id: 1, name: "ميلاد مهند", backgroundcolor: "Bluecolor", date: "٣ مارس ٢٠٢٣", days:"20"),
    Countdata(id: 2, name: "السفر", backgroundcolor: "Greencolor", date: "٣ أغسطس ٢٠٢٣", days:"40"),
    Countdata(id: 3, name: "المغامرة", backgroundcolor: "Orangecolor", date: "٣ مارس ٢٠٢٣", days:"13"),
    Countdata(id: 4, name: "الرحلة", backgroundcolor: "Graycolor", date: "٣ أغسطس ٢٠٢٣", days:"1"),

]


var countup_Data = [
    //var week_Fit_Data = [
    Countdata(id: 0, name: "تجريبي ١", backgroundcolor: "Redcolor", date: "١ فبراير ٢٠٢١", days:"40"),
    Countdata(id: 1, name: "تجريبي ٢", backgroundcolor: "Graycolor", date: "٣ أغسطس ٢٠٢٢", days:"97"),
    Countdata(id: 2, name: "تجريبي ٣", backgroundcolor: "Orangecolor", date: "١٧ فبراير ٢٠٢٢", days:"120"),
    Countdata(id: 3, name: "تجريبي ٤", backgroundcolor: "Purplecolor", date: "١ جولاي ٢٠٢٢", days:"35"),
]




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
