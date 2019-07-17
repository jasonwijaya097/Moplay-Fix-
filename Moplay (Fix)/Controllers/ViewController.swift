//
//  ViewController.swift
//  Moplay (Fix)
//
//  Created by Jason Valencius Wijaya on 17/07/19.
//  Copyright © 2019 Jason Valencius Wijaya. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var birthdayDatePicker: UIDatePicker!
    @IBOutlet weak var ageCalculations: UILabel!
    
    //Variabel Sound/Music
    var playerMusic: AVAudioPlayer = AVAudioPlayer()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        playMusic()
        
        birthdayDatePicker.maximumDate = Date()
    }
    
    @IBAction func buttonSubmitTapped(_ sender: Any) {
        calculateAge()
        performSegue(withIdentifier: "segueToActivities", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! ActivitiesViewController
        secondController.myBabyDOB = ageCalculations.text!
    }
    
    
    func calculateAge(){
        let birthDate = self.birthdayDatePicker.date
        let today = Date()
        let calendar = Calendar.current
        let components = calendar.dateComponents([.month], from: birthDate, to: today)
        let ageMonths = components.month
        
        self.ageCalculations.text = "\(ageMonths!) months"
    }
    
    func playMusic(){
        do {
            let audioPath = Bundle.main.path(forResource: "bensound-ukulele", ofType: "mp3")
            try playerMusic = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        } catch {
            //Error
        }
        
        self.playerMusic.play()
    }


}

