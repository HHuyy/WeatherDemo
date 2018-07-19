//
//  DataService.swift
//  WeatherDemo
//
//  Created by Đừng xóa on 7/18/18.
//  Copyright © 2018 Đừng xóa. All rights reserved.
//

import Foundation
typealias DICT = Dictionary<AnyHashable,Any>

class DataService {
    static let shared: DataService = DataService()
    var weather: Weather?
    
    //        func getDataByNotifi() {
    //            let urlString = "http://api.apixu.com/v1/current.json?key=7ef0663d09174c43b9d12527181807&q=Paris"
    //            guard let url = URL(string: urlString) else { return }
    //            let urlRequest = URLRequest(url: url)
    //            let downloadTask = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, _ , error) in
    //                guard error == nil else {return}
    //                guard let aData = data else {return}
    //                do {
    //                    if let jsonObject = try JSONSerialization.jsonObject(with: aData, options: .mutableContainers) as? DIC {
    //                        self.weather = Weather(dictionary: jsonObject)
    //                        DispatchQueue.main.async {
    //                            NotificationCenter.default.post(name: Notification.Name.init("update"), object: nil)
    //                        }
    //                    }
    //                }
    //                catch {
    //                    print(error.localizedDescription)
    //                }
    //            })
    //            downloadTask.resume()
    //    }
    
    
    func getDataByClosure(completedHandler: @escaping (Weather) -> Void) {
        let urlString = "http://api.apixu.com/v1/current.json?key=7ef0663d09174c43b9d12527181807&q=Paris"
        guard let url = URL(string: urlString) else { return }
        let urlRequest = URLRequest(url: url)
        let downloadTask = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, _ , error) in
            guard error == nil else {return}
            guard let aData = data else {return}
            do {
                if let jsonObject = try JSONSerialization.jsonObject(with: aData, options: .mutableContainers) as? DICT {
//                    if let weather = Weather(dictionary: jsonObject) {
//                        DispatchQueue.main.async {
//                            completedHandler(weather)
//                        }
//                    }

                    DispatchQueue.main.async {
                        completedHandler(Weather(dictionary: jsonObject))
                    }
                }
            }
            catch {
                print(error.localizedDescription)
            }
        })
        downloadTask.resume()
        
    }
}
