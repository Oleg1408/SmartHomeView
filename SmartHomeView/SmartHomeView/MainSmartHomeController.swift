//
//  ViewController.swift
//  SmartHomeView
//
//  Created by Олег Курбатов on 13.06.2023.
//

import UIKit

class MainSmartHomeController: UIViewController, DelegateCollorView {
 

    


    @IBOutlet weak var lampView: LampBlock!
    @IBOutlet weak var chargerView: ChargeBlock!
    @IBOutlet weak var themeView: InfoView!
    @IBOutlet weak var placementView: InfoView!
    @IBOutlet weak var powerView: PowerView!
    @IBOutlet weak var colorsView: CollorView!
    @IBOutlet weak var lightView: ChargeBlock!
    @IBOutlet weak var timeTodayView: TimeView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsLampView()
        settingsSmallBlock()
        settingsLargeBlock()
        settingsConfigur()
        collorPlacement()

    }
    
    private func settingsConfigur() {
        
        
        lampView.configurLamp(text: "Small lamp for working at the table", lampImage: UIImage(named: "lampa")!, sunImage: UIImage(named: "sun")!, colourImage: UIImage(named: "colour")!)
        //
        chargerView.configurCharge(image: UIImage(named: "charge")!, largeTextLable: "12 KwH", smallTextLable: "8 hours")
        lightView.configurPower(imagePower: UIImage(named: "sunLight")!)
        //
        themeView.configurInfo(mainText: "Winter morning", smallText: "Theme", imageLeft: UIImage(named: "paint")!, imageRight: UIImage(named: "threeDots")!)
        placementView.configurInfo(mainText: "Bedroom", smallText: "Placement", imageLeft: UIImage(named: "location")!, imageRight:  UIImage(named: "threeDots")!)
        //
        colorsView.configurCollor(collorText: "Colors")
        powerView.configur(textPower: "Power")
        //
        timeTodayView.configurTime(imagePoint: UIImage(named: "dotWork")!, pointName: "Work", time: "11:00 am – 12:00 am", day: "Fri")
    }
    

    
    
//
//    func test() {
//
//        let gradient = CAGradientLayer()
//        let blue = UIColor(red: 10/255, green: 91/255, blue: 133/255, alpha: 1)
//        let green = UIColor(red: 0, green: 146/255, blue: 139/255, alpha: 1)
//        gradient.colors = [blue.cgColor, green.cgColor, green.cgColor]
//        gradient.locations = [0, 0.3, 1]
//        gradient.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
//        view.layer.addSublayer(gradient)
//    }
//
//
    
        
    func collorPlacement() {

        placementView.rightSmallImage.alpha = 1.0
    }
    
    private func settingsLampView() {
        lampView.layer.cornerRadius = 40
    }
    
    private func settingsSmallBlock() {
        chargerView.layer.cornerRadius = 40
        powerView.layer.cornerRadius = 40
        colorsView.layer.cornerRadius = 40
        lightView.layer.cornerRadius = 40
    }
    
    private func settingsLargeBlock() {
        themeView.layer.cornerRadius = 40
        placementView.layer.cornerRadius = 40
        timeTodayView.layer.cornerRadius = 40
    }
    
    
    
    
}

