//
//  Eatery.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import Foundation

class Eatery:Identifiable {
    var id = UUID()
    var name: String
    var location: String
    var notes: String
    var reviews: [Review]?
    var imageURLString: URL?
    
    init(name:String,location:String,notes:String,reviews:[Review]?) {
        self.name = name
        self.location = location
        self.notes = notes
        if let rev = reviews{
            self.reviews = rev
        }
    }
}
