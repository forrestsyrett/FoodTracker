//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Forrest Syrett on 4/9/16.
//  Copyright © 2016 Forrest Syrett. All rights reserved.
//

import UIKit
import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
// MARK: FoodTracker Tests
    
    // Tests to confirm that the meal initializer returns when no name or negative rating is provided
    func testMealInitialization() {
        
        // Success Case
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure Case
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Expression is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")
    }
}