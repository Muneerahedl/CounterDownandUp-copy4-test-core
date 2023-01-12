//
//  SwiftUIView.swift
//  CounterDownandUp
//
//  Created by Muneerah Aledaily on 10/01/2023.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
       // List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
        List{
            ForEach(0..<5) { item in
                

          
            VStack{
              
                    
                    HStack{
                        Image(systemName: "arrow.down.circle.fill")
                            .font(.system(size: 60))
                            .foregroundColor(Color("Pinkcolor"))
                        VStack(alignment: .leading){
                            Text("Tt")
                            Text("Text date")
                            Rectangle()
                                .frame(width: 170, height: 2)
                                .foregroundColor(.red).opacity(0)
                        }
//                        ZStack{
//                            Rectangle()
//                                .frame(width: 100, height: 50)
//                                .foregroundColor(.white.opacity(0.49))
//                                .cornerRadius(0)
                            VStack{
                                Text("text")
                                Text("200")
                                Text("text")
                            }
                       // }
                }
            }
            .listRowBackground(Color("Pinkcolor").opacity(0.60))
        }
            
        }
        //.scrollContentBackground(.hidden)
        
        //.background(Color("Pinkcolor"))
        //.background(Color("Pinkcolor").opacity(0.60))
              //.cornerRadius(27)
        
//        HStack{
//            ZStack{
//                Rectangle()
//                    .frame(width: 100, height: 100)
//                    .foregroundColor(.white.opacity(0.49))
//                    .cornerRadius(0)
//
//                //.padding()
//                VStack{
//                    Text("text")
//                    Text("200")
//                    Text("text")
//
//                }
//            }
//            VStack(alignment: .trailing){
//                Text("Tt")
//                Text("Text date")
//                Rectangle()
//                    .frame(width: 190, height: 2)
//                    .foregroundColor(.red).opacity(0)
//            }
//            //.padding()
//            Image(systemName: "arrow.down.circle.fill")
//                .font(.system(size: 80))
//                .foregroundColor(Color("Pinkcolor"))
//        }
//        .background(Color("Pinkcolor").opacity(0.60))
//        .cornerRadius(27)
        
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
