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

    override func viewDidLoad() {
        super.viewDidLoad()
//        DataService.shared.getDataByNotifi()
//        NotificationCenter.default.addObserver(self, selector: #selector(updateUI), name: Notification.Name.init("update"), object: nil)
        DataService.shared.getDataByClosure { (weather) in
            self.cityLabel.text = weather.name
            self.tempLabel.text = String(weather.temp_c)
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

