//
//  TimeViewController.swift
//  SmartHomeView
//
//  Created by Олег Курбатов on 13.06.2023.
//

import UIKit
import Lottie

class TimeViewController: UIViewController {
    
    @IBOutlet weak var timeMorning: TimeView!
    @IBOutlet weak var timeBrekfast: TimeView!
    @IBOutlet weak var timeEvening: TimeView!
    @IBOutlet weak var timeHoliday: TimeView!
    @IBOutlet weak var animateTimeLottie: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cornerRadiusView()
        timeSettings()
        settimgsAnimateLottie()
        
    }
    
    private func timeSettings() {
        
        timeMorning.configurTime(imagePoint: UIImage(named: "dotMain"), pointName: "Wake Up", time: "09:00 am – 10:00 am", day: "Mon,Tus,Wed,Thu,Fri")
        timeBrekfast.configurTime(imagePoint: UIImage(named: "dotMain"), pointName: "Time to Brekfasn", time: "12:00 am - 13:00 pm", day: "Mon,Tus,Wed,Thu,Fri,Sat,Sun")
        timeEvening.configurTime(imagePoint: UIImage(named: "dotMain"), pointName: "Good night", time: "21:00 pm - 22:00 pm", day: "Mon,Tus,Wed,Thu,Fri")
        timeHoliday.configurTime(imagePoint: UIImage(named: "dotMain"), pointName: "Holiday", time: "10:00 am - 11:00 am", day: "Sat,Sun")
    }
    
    private func settimgsAnimateLottie() {
        
        animateTimeLottie.contentMode = .scaleAspectFill
        animateTimeLottie.loopMode = .loop
        animateTimeLottie.play()
    }
    
    private func cornerRadiusView() {
        
        timeMorning.layer.cornerRadius = 40
        timeBrekfast.layer.cornerRadius = 40
        timeEvening.layer.cornerRadius = 40
        timeHoliday.layer.cornerRadius = 40
    }
}
