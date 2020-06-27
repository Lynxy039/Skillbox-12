//
//  DailyWeatherModel.swift
//  Skillbox 12
//
//  Created by Антон Тимоненков on 21.06.2020.
//  Copyright © 2020 Антон Тимоненков. All rights reserved.
//

import Foundation
import SwiftyJSON

class DailyWeather{
  var date: Date
  var imageName: String
  var description: String
  var dayT: Int
  var nightT: Int
  var feelsDay: Int
  var feelsNight: Int
  
  init?(data: JSON){
    guard let date = data["dt"].double,
      let imageName = data["weather",0,"icon"].string,
      let description = data["weather",0,"description"].string,
      let dayT = data["temp","day"].double,
      let nightT = data["temp","night"].double,
      let feelsDay = data["feels_like","day"].double,
      let feelsNight = data["feels_like","night"].double
    else {
      return nil
    }
  self.date = Date(timeIntervalSince1970: date)
  self.imageName = imageName
  self.description = description
  self.dayT = Int(dayT)
  self.nightT = Int(nightT)
  self.feelsDay = Int(feelsDay)
  self.feelsNight = Int(feelsNight)
  }
}
