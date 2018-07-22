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
        self.addHeaderNameWithTitle(title: "My First Title")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

