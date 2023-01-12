//
//  test.swift
//  CounterDownandUp
//
//  Created by Muneerah Aledaily on 11/01/2023.
//

import SwiftUI


struct test: View {
    @Environment(\.managedObjectContext) var managedObjContext
     @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    //@State private var tcounter: Double = 0
    
    @State var date: Date = Date()
    var body: some View {
        Form{
            Section{
                TextField("text", text: $name)
                
//                VStack{
//                    Text("test2: \(Int(tcounter))")
//                    Slider(value: $tcounter, in: 0...1000, step:10)
//                }
//                .padding()
                
                HStack{
                    Spacer()
                    Button("Save"){
                        DataController().addcountdown(name: name, date: Date(), context: managedObjContext)
                        dismiss()
                    }
                }
                Spacer()
            }
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
