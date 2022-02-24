//
//  ViewController.swift
//  GithubActions
//
//  Created by Saurabh on 24/02/22.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func addedActions() {
        print("ACTIONS")
    }
}

struct Bank {
    var balance: Double {
        didSet {
            if balance < 0 { balance = 0 }
        }
    }
    
    init() { balance = 0 }
    
    init(balance: Double) { self.balance = balance }
    
    mutating func add(money: Double) {
        self.balance += money
    }
    
    mutating func remove(money: Double) {
        self.balance -= money
    }
}
