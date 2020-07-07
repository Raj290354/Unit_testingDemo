//
//  HomeVC.swift
//  TestingDemo
//
//  Created by Rakesh Kumar on 8/30/18.
//  Copyright © 2018 Seasia. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles) // => 140
        
    }
    
    func Sum(first:Int,second:Int) -> Int{
        return first+second
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
