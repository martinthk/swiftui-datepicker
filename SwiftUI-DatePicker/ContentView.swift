//
//  ContentView.swift
//  SwiftUI-DatePicker
//
//  Created by Martin Tom on 12/5/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    
    var body: some View {
        
        Form{
            //        Explaination:
            //        - in: Date()... -> ONLY from today onward
            //        - in: ...Date() -> ONLY from today backward
            //        https://developer.apple.com/documentation/swiftui/datepicker
            
            Section (header: Text("iOS 14 style")){
                DatePicker("Date", selection: $date, in: Date()...)
            }
            
            Section (header: Text("Wheel Style (scrollable)")){
                DatePicker("", selection: $date, in: Date()...)
                    .datePickerStyle(WheelDatePickerStyle())
            }
            
            Section (header: Text("Graphic Style (interactive calendar or clock)")){
                DatePicker("Date", selection: $date, in: Date()...)
                    .datePickerStyle(GraphicalDatePickerStyle())
            
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
