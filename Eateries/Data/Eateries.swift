//
//  Eateries.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import Foundation

struct Eateries {
    static var start = [
        
        Eatery(name: "Pétrus", location: "London", notes: "No food poisening so far!", reviews: [InitialReviews.startingReviews[0]]),
        
        Eatery(name: "Via Sophia", location: "Washington", notes: "Takeaway and dine in.", reviews: [InitialReviews.startingReviews[1]]),
        
        Eatery(name: "Ajisen", location: "Nanjing", notes: "Authentic Asian Cuisine", reviews: [InitialReviews.startingReviews[2]]),
        
        Eatery(name: "La Grand Véfour", location: "Palais Royal", notes: "Catering for events as well", reviews: [InitialReviews.startingReviews[3]]),
        
        Eatery(name: "Le Procope", location: "Paris", notes: "Right in the heart of Paris", reviews: [InitialReviews.startingReviews[4]])
    ]
}

struct InitialReviews {
    static var startingReviews = [
        Review(reviewer: "Gordon Ramsay", comment: "I 🤬 found a bloody raw tendon in the main and a 🤬 toenail in the desert! How the 🤬 has this place not been shut down beats me!"),
        
        Review(reviewer: "Morgan", comment: "Two stars out of five, you may as well watch paint dry between the time you place an order and it arrives"),
        
        Review(reviewer: "Yasin", comment: "Not bad for the price, be aware though no eftpos for purchases below ten dollars"),
        
        Review(reviewer: "Réne", comment: "The quality of food and service does not live up to its name, it was not like this before.Essentially,There is a big gap in quality now. New management has reduced the business to just syntactic sugar"),
        
        Review(reviewer: "Andre", comment: "They said they forgot to put the wedding ring in the desert!, no body knows where it is!. Don't visit this place!")
    ]
}
