//
//  ContentView.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - PROPERTIES
    @State var eateries: [Eatery]
    
//    func addElement() {
//        let new = Eatery(name: "<new>", location: "", notes: "", reviews: [Review(reviewer: "", comment: "")])
//        eateries.append(new)
//        print("Adding Element")
//    }
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            MasterView(eateries: $eateries)
                .navigationTitle("Eateries")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing: Button(action: {
                        withAnimation {
                            let new = Eatery(name: "<new>", location: "", notes: "", reviews: [Review(reviewer: "", comment: "")])
                            eateries.append(new)
                        }
                    }) {
                        Image(systemName: "plus")
                    })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(eateries: Eateries.start)
    }
}
