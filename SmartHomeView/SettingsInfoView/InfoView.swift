//
//  InfoView.swift
//  SmartHomeView
//
//  Created by Олег Курбатов on 17.06.2023.
//

import UIKit

protocol DelegateCollorView {
    func collorPlacement()
}

class InfoView: UIView {
    
    @IBOutlet var mainInfoView: UIView!
    @IBOutlet weak var rightSmallImage: UIImageView!
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var firstTextLable: UILabel!
    @IBOutlet weak var secondTextLable: UILabel!
    
    var delegate: DelegateCollorView?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("InfoView", owner: self, options: nil)
        mainInfoView.fixInView(self)
    }
    
    func configurInfo(mainText: String, smallText: String, imageLeft: UIImage, imageRight: UIImage) {

        mainInfoView.layer.cornerRadius = 40
        rightSmallImage.image = imageRight
        rightSmallImage.alpha = 0.3
        leftImage.image = imageLeft
        leftImage.alpha = 0.5
        firstTextLable.text = mainText
        secondTextLable.text = smallText
        
    }
    
    func settingRigteImage() {
        delegate?.collorPlacement()
    }
    
}
