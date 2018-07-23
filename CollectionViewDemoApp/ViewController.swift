//
//  ViewController.swift
//  CollectionViewDemoApp
//
//  Created by Omar Alshammari on 09/11/1439 AH.
//  Copyright © 1439 Omar Alshammari. All rights reserved.
//

import UIKit

//فقط نجعل الكلاس يرث DetailsCollectionViewController
class ViewController: DetailsCollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Magic UI"
        //نقوم باستدعاء الدالة المساعدة لإضافة العنوان/الترأيس
        self.addHeader(with: "My First Title")
        
        self.addDetails(with: "Title 1", and: "This is the first subtitle")
        self.addDetails(with: "Title 2", and: "This is the second subtitle")
        self.addDetails(with: "Title 3", and: "This is the third subtitle")
        self.addDetails(with: "Title 4", and: "This is the fourth subtitle")
        self.addDetails(with: "Title 5", and: "This is the fifth subtitle")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

