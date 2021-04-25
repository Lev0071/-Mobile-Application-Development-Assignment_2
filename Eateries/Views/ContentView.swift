//
//  ContentView.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import SwiftUI

struct ContentView: View {
    
    var eateries: [Eatery]
    
    var body: some View {
        List{
            ForEach(eateries){ listItem in
                Text("\(listItem.name)")
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(eateries: Eateries.start)
    }
}
