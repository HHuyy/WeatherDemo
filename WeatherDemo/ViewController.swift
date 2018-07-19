//
//  ViewController.swift
//  WeatherDemo
//
//  Created by Đừng xóa on 7/18/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var humidity: UILabel!
    @IBOutlet weak var winSpdLabel: UILabel!
    @IBOutlet weak var windDgrLabel: UILabel!
    @IBOutlet weak var cloudLabel: UILabel!
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var tem: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        DataService.shared.getDataByNotifi()
//        NotificationCenter.default.addObserver(self, selector: #selector(updateUI), name: Notification.Name.init("update"), object: nil)
        DataService.shared.getDataByClosure { (weather) in
            self.cityLabel.text = weather.name
            self.tempLabel.text = "\(weather.temp_c) ºC"
            self.countryLabel.text = weather.country
            self.humidity.text = "Humidity: \(weather.humidity)"
            self.winSpdLabel.text = "Wind Speed: \(weather.wind_mph)"
            self.windDgrLabel.text = "Wind Degree: \(weather.wind_degree)"
            if weather.cloud == 0 {
                self.cloudLabel.text = "No Cloud"
            } else {
                self.cloudLabel.text = "Cloudy"
            }
            self.tem.text = weather.icon
        }
    }
//    @objc func updateUI() {
//        if let weather = DataService.shared.weather {
//            cityLabel.text = weather.name
//            tempLabel.text = String(weather.temp_c)
//        }
//    }
//    deinit {
//        NotificationCenter.default.removeObserver(self)
//    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

