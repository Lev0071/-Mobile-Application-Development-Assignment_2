//
//  Eatery.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import Foundation

class Eatery:Identifiable,Equatable {
    
    /// Equatable function to help automate test cases
    static func == (lhs: Eatery, rhs: Eatery) -> Bool {
        return (
            lhs.name == rhs.name &&
            lhs.location == rhs.location &&
            lhs.notes == rhs.notes &&
            lhs.reviews == rhs.reviews
        )
    }
    
    var id = UUID()
    var name: String
    var location: String
    var notes: String
    var reviews: [Review]
    var imageURL: URL?
    
    init(name:String,location:String,notes:String,reviews:[Review]) {
        self.name = name
        self.location = location
        self.notes = notes
        self.reviews = reviews
    }
}
