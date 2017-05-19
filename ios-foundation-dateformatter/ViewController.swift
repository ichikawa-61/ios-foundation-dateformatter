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
    
    //フォーマットの形式を指定する
    private func setDateFormat(){
    
        dateFormatter.dateFormat = "yy/MM/dd HH:mm:ss"
    }
    
    //日本時間にセット
    private func setLocale(){
        
        dateFormatter.locale = Locale(identifier: "ja_JP")
    }
    
    //String型へ変換
    private func convertDateToString(){
        dateFormatter.string(from: Date())
    }
    
    //Date型へ変換
    private func convertStringToDate(){
        
        let date = dateFormatter.date(from: "2017/05/16 11:11:11")
        print(date ?? "covert failure")
    }
    
    
    
    private func testDateFormatterStyle(){
        
        dateFormatter.dateStyle = .full
        print(dateFormatter.string(from: Date()))    //2017年5月19日金曜日
        
        dateFormatter.dateStyle = .short
        print(dateFormatter.string(from: Date()))    //2017/05/19
        
        dateFormatter.dateStyle = .medium
        print(dateFormatter.string(from: Date()))    //2017/05/19
        
        dateFormatter.dateStyle = .long
        print(dateFormatter.string(from: Date()))    //2017年5月19日
        
    }
    
    private func setTimeStyle(){
        
        dateFormatter.timeStyle = .full
        print(dateFormatter.string(from: Date()))    //2017年5月19日 14時54分35秒 日本標準時
        
        dateFormatter.timeStyle = .short
        print(dateFormatter.string(from: Date()))    //2017年5月19日 14:54
        
        dateFormatter.timeStyle = .medium
        print(dateFormatter.string(from: Date()))    //2017年5月19日 14:54:35
        
        dateFormatter.timeStyle = .long
        print(dateFormatter.string(from: Date()))    //2017年5月19日 14:54:35 JST
        
    }
}

