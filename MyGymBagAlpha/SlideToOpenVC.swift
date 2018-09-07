//
//  SlideToOpenVC.swift
//  MyGymBagAlpha
//
//  Created by Yaniv Amiri on 6/8/18.
//  Copyright © 2018 TGYA. All rights reserved.
//

import UIKit

class SlideToOpenVC : UIViewController {
    
    @IBOutlet weak var slidingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "ManWorkinOut")!)
    }
    
}
