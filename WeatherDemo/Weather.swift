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
    var country: String
    var temp_c: Double
    var icon: String
    var wind_mph: Double
    var wind_degree: Double
    var humidity: Double
    var cloud: Double
    
    
//    init?(dictionary: DIC) {
//        guard let location = dictionary["location"] as? DIC else { return nil }
//        guard let name = location["name"] as? String else { return nil }
//        guard let country = location["country"] as? String else { return nil }
//        guard let current = dictionary["current"] as? DIC else { return nil }
//        guard let condition = current["condition"] as? DIC else { return nil }
//        guard let icon = condition["icon"] as? String else { return nil }
//        guard let temp_c = current["temp_c"] as? Double else { return nil }
//        guard let wind_mph = current["wind_mph"] as? Double else { return nil }
//        guard let wind_degree = current["wind_degree"] as? Double else { return nil }
//        guard let humidity = current["humidity"]as? Double else { return nil }
//        guard let cloud = current["cloud"] as? Double else { return nil }
//
//        self.cloud = cloud
//        self.humidity = humidity
//        self.wind_degree = wind_degree
//        self.wind_mph = wind_mph
//        self.icon = icon
//        self.country = country
//        self.name = name
//        self.temp_c = temp_c
//    }
    
    init(dictionary: DICT) {
        let location = dictionary["location"] as? DICT ?? [:]
        name = location["name"] as? String ?? "-1"
        country = location["country"] as? String ?? "-1"
        
        let current = dictionary["current"] as? DICT ?? [:]
        temp_c = current["temp_c"] as? Double ?? -1000
        wind_degree = current["wind_degree"] as? Double ?? -1000
        wind_mph = current["wind_mph"] as? Double ?? -1000
        humidity = current["humidity"] as? Double ?? -1000
        cloud = current["cloud"] as? Double ?? -1000
        
        let condition = current["condition"] as? DICT ?? [:]
        icon = condition["icon"] as? String ?? "-1"
    }
}

