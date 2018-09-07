//
//  Saved Workouts.swift
//  MyGymBagAlpha
//
//  Created by Yaniv Amiri on 8/2/18.
//  Copyright © 2018 TGYA. All rights reserved.
//

import UIKit
class savedWorkoutsVC : UIViewController {
    
    var workouts : [String] = [/*"W0", "W1","W2","W3","W4","W5","W6","W7","W8","W9"*/]
    var workoutDescription : [String] = [/*"Test Description", "Test Description", "Test Description", "Test Description", "Test Description", "Test Description", "Test Description","Test Description" ,"Test Description", "Test Description"*/]
    @IBOutlet weak var noSavedWorkouts: UILabel!
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "Logo (1)"))
        if workouts.isEmpty {
            noSavedWorkouts.textColor = UIColor.gray
            tableview.tintColor = UIColor.clear
        }
    }
}




extension savedWorkoutsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : CustomWorkoutCell = tableView.dequeueReusableCell(withIdentifier: "workoutCell", for: indexPath) as! CustomWorkoutCell
        
        cell.customView.layer.cornerRadius = cell.customView.frame.height / 4
        cell.workoutTitle.text = workouts[indexPath.row]
        cell.descriptionLabel.text = workoutDescription[indexPath.row]
        
        return cell
    }
}
