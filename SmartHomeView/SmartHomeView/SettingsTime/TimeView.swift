//
//  TimeView.swift
//  SmartHomeView
//
//  Created by Олег Курбатов on 22.06.2023.
//

import UIKit

class TimeView: UIView {
    
    @IBOutlet var mainTimeView: UIView!
    @IBOutlet weak var pointImage: UIImageView!
    @IBOutlet weak var nameOfPointLable: UILabel!
    @IBOutlet weak var timeLable: UILabel!
    @IBOutlet weak var dayLable: UILabel!
    @IBOutlet weak var timeSwitch: UISwitch!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("TimeView", owner: self, options: nil)
        mainTimeView.fixInView(self)
    }
    
    func configurTime(imagePoint: UIImage, pointName: String, time: String, day: String) {
        
        mainTimeView.layer.cornerRadius = 40
        pointImage.image = imagePoint
        pointImage.alpha = 0.6
        nameOfPointLable.text = pointName
        timeLable.text = time
        dayLable.text = day
    }
    
    @IBAction func pushTimeSwitch(_ sender: Any) {
        
        if timeSwitch.isOn {
            mainTimeView.alpha = 1
            print("Time ON")
        } else {
            mainTimeView.alpha = 0.5
            print("Time OFF")
        }
        
    }
    
    
}
