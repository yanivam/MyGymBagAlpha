//
//  ViewController.swift
//  MyGymBagAlpha
//
//  Created by Yaniv Amiri on 5/16/18.
//  Copyright © 2018 TGYA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonBackground: UIImageView!
    @IBOutlet weak var buttonBackground2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "Logo (1)"))
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.buttonBackground.layer.masksToBounds = true
        self.buttonBackground.layer.cornerRadius = buttonBackground.frame.height / 8
        self.buttonBackground2.layer.masksToBounds = true
        self.buttonBackground2.layer.cornerRadius = buttonBackground2.frame.height / 8
        navigationController?.navigationBar.barTintColor = UIColor(patternImage: UIImage(named: "Background (1)")!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }

}

