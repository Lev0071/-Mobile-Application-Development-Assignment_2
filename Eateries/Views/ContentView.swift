//
//  ContentView.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import SwiftUI

struct ContentView: View {
    
    var eateries: [Eatery]
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            MasterView(eateries: eateries)
                .navigationTitle("Eateries")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(eateries: Eateries.start)
    }
}
