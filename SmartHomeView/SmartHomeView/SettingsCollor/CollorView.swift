//
//  CollorView.swift
//  SmartHomeView
//
//  Created by Олег Курбатов on 19.06.2023.
//

import UIKit

protocol ColorDelegate: AnyObject {
    func collor(sender: CollorView)
}

class CollorView: UIView {

    @IBOutlet var collorMainView: UIView!
    @IBOutlet weak var collorImageView: UIImageView!
    @IBOutlet weak var collorTextLable: UILabel!
    
    weak var delegateCollor: ColorDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("CollorView", owner: self, options: nil)
        collorMainView.fixInView(self)
    }
    
    func configurCollor(collorText: String) {
        
        collorMainView.layer.cornerRadius = 40
        collorTextLable.text = collorText
        collorImageView.image = UIImage(named: "colors")
        
    }
    
    @IBAction func pressCollor(_ sender: Any) {
        delegateCollor?.collor(sender: self)
    }
}
