//
//  ViewController.swift
//  Realm
//
//  Created by home on 2018/04/18.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit
import RealmSwift

class Person: NSObject {
    
    @objc dynamic var name = ""
    @objc dynamic var age = 0
    @objc dynamic var sec = ""
    
}

class ViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let realm = try! Realm()
        let tanaka = Person()

        tanaka.name = "田中"
        tanaka.age = 23
        tanaka.sex = "MALE"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testWrite(_ sender: Any) {
        
        try! realm.write() {
            realm.add(tanaka)
        }
    }
    
    @IBAction func testLoad(_ sender: Any) {
        let realm = try! Realm()
        realm.objects(Person.self)
    }
    
}

