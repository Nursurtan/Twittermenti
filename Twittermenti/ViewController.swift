//
//  ViewController.swift
//  Twittermenti
//
//  Created by Angela Yu on 17/07/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import SwifteriOS


class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!
    
    
    
//    let swifter = Swifter(consumerKey: “9F4Rnej4pW39Dj1FvnFSsneQW”, consumerSecret: “tInTcFmb1AXiLEZyyxjpRfvnzbVqqFNwB1Zu4YFFJJ6hZGf6Qb”)
    
    let swifter = Swifter(consumerKey: "LTReJyreyyuz4SWjVABuA1WKI", consumerSecret: "ajf107xfd6869heCG8Ptn8iztfFHBWPIxLkFGvsmoEwI7MKZcz")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        swifter.searchTweet(using: "@Apple", lang: "en", count: 100, tweetMode: .extended, success: { (results, metadata) in
            print(results)
        }) { (error) in
            print("There was an error with the Twitter API Request, \(error)")
        }

//        swifter.searchTweet(using: <#T##String#>, geocode: <#T##String?#>, lang: <#T##String?#>, locale: <#T##String?#>, resultType: <#T##String?#>, count: <#T##Int?#>, until: <#T##String?#>, sinceID: <#T##String?#>, maxID: <#T##String?#>, includeEntities: <#T##Bool?#>, callback: <#T##String?#>, tweetMode: <#T##TweetMode#>, success: <#T##Swifter.SearchResultHandler?##Swifter.SearchResultHandler?##(JSON, _ searchMetadata: JSON) -> Void#>, failure: <#T##Swifter.FailureHandler##Swifter.FailureHandler##(_ error: Error) -> Void#>)
        
        
        
    }

    @IBAction func predictPressed(_ sender: Any) {
    
    
    }
    
}

