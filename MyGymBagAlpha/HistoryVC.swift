//
//  HistoryVC.swift
//  MyGymBagAlpha
//
//  Created by Yaniv Amiri on 6/8/18.
//  Copyright © 2018 TGYA. All rights reserved.
//

import UIKit

class HistoryVC : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "Logo (1)"))
        
    }
}

extension HistoryVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "H")
        return cell!
    }
    
    
}
