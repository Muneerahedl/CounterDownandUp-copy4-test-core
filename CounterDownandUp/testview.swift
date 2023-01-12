//
//  testview.swift
//  CounterDownandUp
//
//  Created by Muneerah Aledaily on 11/01/2023.
//

import SwiftUI
import CoreData

struct testview: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.date, order: .reverse)]) var counter: FetchedResults<Counter>
    
    @State private var showingAddView = false
    
    var body: some View {
        //NavigationView{
        VStack{ List {
            ForEach(counter) { counter in
                //NavigationLink(destination: Text("\(counter.name)")){
                
                Text(counter.name!)
            }
        }
            //}
        }
            }
        }
        
        
    //}
//}


struct testview_Previews: PreviewProvider {
    static var previews: some View {
        testview()
    }
}
