//
//  DataController.swift
//  CounterDownandUp
//
//  Created by Muneerah Aledaily on 10/01/2023.
//

import Foundation
import CoreData
import SwiftUI
class DataController: ObservableObject {
    let container = NSPersistentContainer (name: "Countdowndata")
    
    init() {
        container.loadPersistentStores { desc, error in
            if let error = error {
                print("Failed to load the data \(error.localizedDescription)")
            }
        }
    }
    
    func save (context: NSManagedObjectContext) {
        do {
            try context.save()
            print( "Data saved!!! WUHU!!!")
        } catch {
                print("We could not save the data...")
                    
            }
        }
    
//    func addcountdown(name: String, days:Double, date: Date, backgroundcolor:String, context: NSManagedObjectContext)
    func addcountdown(name: String, date: Date, context: NSManagedObjectContext)
    {
        let counter = Counter(context: context)
        counter.id = UUID()
      counter.date = Date()
        counter.name = name
        //counter.days = Double
        //counter.backgroundcolor = Decimal
        save(context: context)
    }
    
//    func editcountdown(counter: Counter, name: String, days:Double, date: Date, backgroundcolor:String, context: NSManagedObjectContext)
    func editcountdown(counter: Counter, name: String, date: Date, context: NSManagedObjectContext)
    {
      counter.date = Date()
        counter.name = name
       // counter.days = Double
        //counter.backgroundcolor = Decimal
        save(context: context)
    }
    
    }
