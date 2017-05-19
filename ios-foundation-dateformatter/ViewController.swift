//
//  ViewController.swift
//  ios-foundation-dateformatter
//
//  Created by Manami Ichikawa on 5/19/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

import UIKit

let dateFormatter = DateFormatter()

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setDateFormat()
        setLocale()
        testDateFormatterStyle()
        setTimeStyle()
    }
    
    private func setDateFormat(){
    
        dateFormatter.dateFormat = "yy/MM/dd HH:mm:ss"
    }
    
    private func setLocale(){
        
        dateFormatter.locale = Locale(identifier: "ja_JP")
    }
    
    private func testDateFormatterStyle(){
        
        dateFormatter.dateStyle = .full
        print(dateFormatter.string(from: Date()))

        dateFormatter.dateStyle = .short
        print(dateFormatter.string(from: Date()))
        
        dateFormatter.dateStyle = .medium
        print(dateFormatter.string(from: Date()))
        
        dateFormatter.dateStyle = .long
        print(dateFormatter.string(from: Date()))
        
    }
    
    private func setTimeStyle(){
        
        dateFormatter.timeStyle = .full
        print(dateFormatter.string(from: Date()))
        
        dateFormatter.timeStyle = .short
        print(dateFormatter.string(from: Date()))
        
        dateFormatter.timeStyle = .medium
        print(dateFormatter.string(from: Date()))
        
        dateFormatter.timeStyle = .long
        print(dateFormatter.string(from: Date()))
        
    }    
}

