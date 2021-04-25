//
//  ModelTests.swift
//  EateriesTests
//
//  Created by Yasin Cakar on 25/4/21.
//

import XCTest
@testable import Eateries

class ModelTests: XCTestCase {
    
    var eatery: [Eatery]?
    var reviews: [Review]?

    override func setUpWithError() throws {
        eatery = Eateries.start
        reviews = InitialReviews.startingReviews
    }

    override func tearDownWithError() throws {
        
        
    }
    
    //MARK: - Test Review Model
    
    /// Test Review Objects
    func testReviewObject() {
        XCTAssertEqual(reviews, InitialReviews.startingReviews)
    }
    
    /// Test "Reviewer" Property of Review Model
    func testReviews_Reviewer_Property() {
        var index = 0
        reviews?.forEach{element in
            XCTAssertEqual(element.reviewer,InitialReviews.startingReviews[index].reviewer)
            
            index += 1
        }
    }
    
    /// Test "Comment" Property of Review Model
    func testComment_Reviewer_Property() {
        var index = 0
        reviews?.forEach{element in
            XCTAssertEqual(element.comment,InitialReviews.startingReviews[index].comment)
            
            index += 1
        }
    }


    //MARK: - Test Eatery Model
    
    /// Test Eatery Objects
    func testEateryObject() {
        XCTAssertEqual(eatery,Eateries.start)
    }
    
    /// Test "Name" Property of Eatery Model
    func testEateries_Name_Property() {
        var index = 0
        eatery?.forEach{element in
            XCTAssertEqual(element.name,Eateries.start[index].name)
            
            index += 1
        }
    }
    
    /// Test "Location" Property of Eatery Model
    func testEateries_Location_Property() {
        var index = 0
        eatery?.forEach{element in
            XCTAssertEqual(element.location,Eateries.start[index].location)
            
            index += 1
        }
    }
    
    /// Test "Notes" Property of Eatery Model
    func testEateries_Notes_Property() {
        var index = 0
        eatery?.forEach{element in
            XCTAssertEqual(element.notes,Eateries.start[index].notes)
            
            index += 1
        }
    }
    
    /// Test "Reviews" Property of Eatery Model
    func testEateries_Reviews_Property() {
        var index = 0
        eatery?.forEach{element in
            XCTAssertEqual(element.reviews,Eateries.start[index].reviews)
            
            index += 1
        }
    }
}
