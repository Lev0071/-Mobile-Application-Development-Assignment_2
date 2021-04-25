//
//  EateriesApp.swift
//  Eateries
//
//  Created by Yasin Cakar on 25/4/21.
//

import SwiftUI

@main
struct EateriesApp: App {
    
    //MARK: - PROPERTIES
    /// Import pre-prepared Data
    var eateries:[Eatery] = {
        
        let eateriesData = Eateries.start
                
        return eateriesData
    }()
    //MARK: - BODY
    var body: some Scene {
        WindowGroup {
            ContentView(eateries: eateries)
        }
    }
}
