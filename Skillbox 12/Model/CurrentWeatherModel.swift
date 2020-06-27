//
//  CurrentWeatherModel.swift
//  Skillbox 12
//
//  Created by Антон Тимоненков on 20.06.2020.
//  Copyright © 2020 Антон Тимоненков. All rights reserved.
//

import Foundation
import SwiftyJSON

class CurrentWeather{
  var city: String
  var imageName: String
  var description: String
  var curT: Int
  var minT: Int
  var maxT: Int
  var feels: Int
  
  init?(data: JSON){
    guard let city = data["name"].string,
      let imageName = data["weather",0,"icon"].string,
      let description = data["weather",0,"description"].string,
      let curT = data["main","temp"].double,
      let minT = data["main","temp_min"].double,
      let maxT = data["main","temp_max"].double,
      let feels = data["main","feels_like"].double else {
      return nil
    }
  self.city = city
  self.imageName = imageName
  self.description = description
  self.curT = Int(curT)
  self.minT = Int(minT)
  self.maxT = Int(maxT)
  self.feels = Int(feels)
  }
}
