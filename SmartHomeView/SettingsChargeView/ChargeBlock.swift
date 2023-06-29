//
//  ChargeBlock.swift
//  SmartHomeView
//
//  Created by Олег Курбатов on 14.06.2023.
//

import UIKit

class ChargeBlock: UIView {
    
    @IBOutlet var mainChargeBlock: UIView!
    @IBOutlet weak var centralTextLable: UILabel!
    @IBOutlet weak var chargeImageView: UIImageView!
    @IBOutlet weak var grayLittleTextLable: UILabel!
    @IBOutlet weak var redBlockView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("ChargeBlock", owner: self, options: nil)
        mainChargeBlock.fixInView(self)
    }
    
    func configurCharge(image: UIImage, largeTextLable: String, smallTextLable: String) {
        
        chargeImageView.image = image
        centralTextLable.text = largeTextLable
        grayLittleTextLable.text = smallTextLable
        chargeImageView.alpha = 0.5
        mainChargeBlock.layer.cornerRadius = 40
        redBlockView.isHidden = true
    }
    
    func configurPower(imagePower: UIImage) {
        
        chargeImageView.image = imagePower
        chargeImageView.alpha = 0.3
        mainChargeBlock.layer.cornerRadius = 40
        redBlockView.layer.cornerRadius = 40
        centralTextLable.isHidden = true
        grayLittleTextLable.isHidden = true

    }
    
}
