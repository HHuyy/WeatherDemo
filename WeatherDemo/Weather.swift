//
//  Weather.swift
//  WeatherDemo
//
//  Created by Đừng xóa on 7/18/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import Foundation

class Weather {
    var name: String
    var temp_c: Double
    
    init?(dictionary: DIC) {
        guard let location = dictionary["location"] as? DIC else { return nil }
        guard let name = location["name"] as? String else { return nil }
        guard let current = dictionary["current"] as? DIC else { return nil }
        guard let temp_c = current["temp_c"] as? Double else { return nil }
        
        self.name = name
        self.temp_c = temp_c
    }
}
