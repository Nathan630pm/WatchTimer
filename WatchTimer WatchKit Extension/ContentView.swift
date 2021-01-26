//
//  ContentView.swift
//  WatchTimer WatchKit Extension
//
//  Created by Nathan Kennedy on 2021-01-25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var minutes:Int = 1
    @State private var seconds:Int = 10
    
    var body: some View {
        VStack {
            Text("Select Time")
            
            HStack {
                Picker(selection: self.$minutes, label: Text("Minutes")){
                    ForEach((0...60), id: \.self) { minute in
                        Text("\(minute)").tag(minute)
                    }
                }
                
                Picker(selection: self.$seconds, label: Text("Seconds")){
                    ForEach((0...59), id: \.self){ second in
                        Text("\(second)").tag(second)
                    }
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
