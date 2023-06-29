//
//  PowerView.swift
//  SmartHomeView
//
//  Created by Олег Курбатов on 19.06.2023.
//

import UIKit
import Lottie

class PowerView: UIView {

    @IBOutlet var powerMainView: UIView!
    @IBOutlet weak var powerTextLable: UILabel!
    @IBOutlet weak var powerSwitch: UISwitch!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("PowerView", owner: self, options: nil)
        powerMainView.fixInView(self)
    }
    
    func configur(textPower: String) {
        
        powerTextLable.text = textPower
        powerMainView.layer.cornerRadius = 40
    }
    
    
    @IBAction func clickPower(_ sender: Any) {
        if powerSwitch.isOn {
            print("ON")
        } else {
            print("OFF")
        }
    }
    

}
