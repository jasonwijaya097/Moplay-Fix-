//
//  ActivitiesViewController.swift
//  Moplay (Fix)
//
//  Created by Jason Valencius Wijaya on 17/07/19.
//  Copyright © 2019 Jason Valencius Wijaya. All rights reserved.
//

import UIKit

class ActivitiesViewController: UIViewController, UITableViewDataSource {
    
    var myBabyDOB = String()
    
    var categories = ["0-12 Months Activities", "13-24 Months Activities", "25-32 Months Activities", "Other Activities"]

    
    @IBOutlet weak var babyAgeInMonths: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        babyAgeInMonths.text = "\(myBabyDOB)"
        
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ActivitiesTableViewCell
        
        return cell
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
