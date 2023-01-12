//
//  newcounter.swift
//  CounterDownandUp
//
//  Created by Muneerah Aledaily on 10/01/2023.
//

import SwiftUI

struct newcounter: View {
//   @Environment(\.managedObjectContext) var managedObjContext
//    @Environment(\.dismiss) var dismiss
       
    @State var name = ""
    @State var date: Date = Date()
    @State var date1: Date = Date()
    @State var receive = false
    @State var tgl: Bool = false
    @State var tgl1: Bool = false
    @State var anotherPage = false
    @State var backgroundColor: Color = .green
    
    let saving:LocalizedStringKey = "Save"
    let canceling:LocalizedStringKey = "Cancel"
    let title2:LocalizedStringKey = "Title"
    let eventdate:LocalizedStringKey = "Event date"
    let backcolor:LocalizedStringKey = "Pick a color"
    let eventtime:LocalizedStringKey = "Event time"
    let allday:LocalizedStringKey = "All day"
    let reminder:LocalizedStringKey = "Reminder"
    let daybefore:LocalizedStringKey = "Day before"
    let whenfinish:LocalizedStringKey = "When finish"
    let format:LocalizedStringKey = "Format"
    let years:LocalizedStringKey = "Years"
    let months:LocalizedStringKey = "Months"
    let weeks:LocalizedStringKey = "Weeks"
    let days:LocalizedStringKey = "Days"
    let hours:LocalizedStringKey = "Hours"
    let minutes:LocalizedStringKey = "Minutes"
    let seconds:LocalizedStringKey = "Seconds"
    let title3:LocalizedStringKey = "Add new countdown"
    

    
  //  @State var colors: [Color] = [.red, .blue, .orange, .pink, .green]
   
    var body: some View {
        NavigationView{
            VStack {
                            HStack{
                                Button(saving){
//                                    DataController().addcountdown(name: $name, days: 3, date: $date, backgroundcolor: $backgroundColor, context: man)
                                }
                                Spacer()
                
                                Button(canceling){
                                    anotherPage = true
                                }
                
                                .fullScreenCover(isPresented:
                                                    $anotherPage) {
                                    newcounter()
                                    //HomePage
                                }
                            }
                
                VStack {
                    Form {
                        TextField(title2, text: $name)
                        //     .multilineTextAlignment(.trailing)
                        //
                        //                    DatePicker("تاريخ بدء الحدث", selection: $date,
                        //                               displayedComponents: [.date])
                        //                    .datePickerStyle(
                        //                        CompactDatePickerStyle()
                        //                        //  WheelDatePickerStyle()
                        //                    )
                        //Future
                        DatePicker(eventdate, selection: $date,
                                   in: Date()...)
                        .datePickerStyle(
                            CompactDatePickerStyle()
                            //  WheelDatePickerStyle()
                        )
                        
                        
                        // اختيار اللون
                        
                        VStack{
                            ColorPicker(backcolor, selection: $backgroundColor,
                                        supportsOpacity: true)
                            
                            
                            Circle()
                                .frame (width: 100, height: 100)
                                .foregroundColor(backgroundColor)
                            
                            //                   .foregroundColor(backgroungColor)
                            //                        Text("اللون")
                            //
                            //                        HStack {
                            //                            Circle()
                            //                                .frame(width: 55, height: 55)
                            //                                .foregroundColor(Color("pinkColor"))
                            //
                            //                            Circle()
                            //                                .frame(width: 55, height: 55)
                            //                                .foregroundColor(Color("PurpleColor"))
                            //                            Circle()
                            //                                .frame(width: 55, height: 55)
                            //                                .foregroundColor(Color("ColorPur2"))
                            //
                            //                            Circle()
                            //                                .frame(width: 55, height: 55)
                            //                                .foregroundColor(Color("ColorBlue"))
                            //                        }
                            //
                            //                        HStack{
                            //                            Circle()
                            //                                .frame(width: 55, height: 55)
                            //                                .foregroundColor(Color("ColorOrang"))
                            //
                            //                            Circle()
                            //                                .frame(width: 55, height: 55)
                            //                                .foregroundColor(Color("ColorYello"))
                            //                            Circle()
                            //                                .frame(width: 55, height: 55)
                            //                                .foregroundColor(Color("ColorGreen"))
                            //                            Circle()
                            //                                .frame(width: 55, height: 55)
                            //                                .foregroundColor(Color("ColorGray"))
                            //
                            //                        }
                            //
                            //
                            
                            
                        }
                        
                        // اختيار صورة
                        
                        
                        
                        
                        
                        // اختيار الوقت
                        VStack{
                            Toggle(isOn: $receive) {
                                Text(allday)
                            }
                            if !receive {
                                
                                DatePicker( " ", selection: $date1,
                                            displayedComponents: [.hourAndMinute])
                                .datePickerStyle(
                                    CompactDatePickerStyle()
                                    //  WheelDatePickerStyle()
                                )
                            }
                            
                        }
                        
                        DatePicker(eventtime, selection: $date,
                                   displayedComponents: [.hourAndMinute])
                        .datePickerStyle(
                            CompactDatePickerStyle()
                            //  WheelDatePickerStyle()
                        )
                        
                        
                        VStack{
                            Text(reminder)
                                .multilineTextAlignment(.trailing)
                            Toggle(isOn: $tgl, label: {
                                Text(daybefore)
                            })
                            Toggle(isOn: $tgl1, label: {
                                Text(whenfinish)
                            })
                        }
                        
                        
                        // التنسيق
                        
                        VStack{
                            Text(format)
                            HStack {
                                
                                Text(years)
                                    .foregroundColor(Color.blue)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.blue) )
                                
                                
                                
                                Text(months)
                                    .foregroundColor(Color.blue)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.blue) )
                                
                                
                                
                                Text(weeks)
                                    .foregroundColor(Color.blue)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.blue) )
                                
                                
                                
                                Text(days)
                                    .foregroundColor(Color.blue)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.blue) )
                            }
                            HStack{
                                Text(hours)
                                    .foregroundColor(Color.blue)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.blue) )
                                
                                
                                
                                Text(minutes)
                                    .foregroundColor(Color.gray)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.gray) )
                                
                                
                                Text(seconds)
                                    .foregroundColor(Color.gray)
                                    .frame(width: 70, height: 70)
                                    .clipShape(Circle())
                                    .overlay(Circle().stroke(Color.gray) )
                                
                                
                                
                                
                                
                                
                            }
                            
                        }
                        
                        
                        
                        
                    }
                }
                
                
            }
            //   .padding(.bottom, 750)
//            .navigationTitle(Text(title3))
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarItems(leading: NavigationLink(destination: newcounter().navigationBarBackButtonHidden(true) , label:{Text(saving)}), trailing: NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true) , label:{Text(canceling)}))
           
        }

        
    }
}

struct newcounter_Previews: PreviewProvider {
    static var previews: some View {
        newcounter()
            .environment(\.layoutDirection, .rightToLeft)
    
         //   .flipsForRightToLeftLayoutDirection(false)
    }
}

