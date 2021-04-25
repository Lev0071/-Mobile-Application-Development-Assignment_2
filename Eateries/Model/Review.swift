//
//  Review.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//
import Foundation

class Review: Equatable,Identifiable{
    
    /// Equatable function to help automate test cases
    static func == (lhs: Review, rhs: Review) -> Bool {
        return lhs.reviewer == rhs.reviewer && lhs.comment == rhs.comment
    }
    
    var id = UUID()
    var reviewer: String
    var comment: String
    
    init(reviewer:String,comment:String) {
        self.reviewer = reviewer
        self.comment = comment
    }
}
