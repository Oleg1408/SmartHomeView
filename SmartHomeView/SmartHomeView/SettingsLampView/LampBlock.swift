//
//  LampBlock.swift
//  SmartHomeView
//
//  Created by Олег Курбатов on 13.06.2023.
//

import UIKit

class LampBlock: UIView {
    
    @IBOutlet var mainLampView: UIView!
    @IBOutlet weak var lampImageView: UIImageView!
    @IBOutlet weak var lampTextView: UILabel!
    @IBOutlet weak var percentLampImageView: UIImageView!
    @IBOutlet weak var colorLampImageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("LampBlock", owner: self, options: nil)
        mainLampView.fixInView(self)
    }
    
    func configurLamp(text: String, lampImage: UIImage?, sunImage: UIImage?, colourImage: UIImage?) {
        
        lampImageView.image = lampImage
        percentLampImageView.image = sunImage
        lampTextView.text = text
        colorLampImageView.image = colourImage
        lampImageView.layer.cornerRadius = 40
        mainLampView.layer.cornerRadius = 40
    }
}
