//
//  ListWeatherInfo2.swift
//  mod2
//
//  Created by Jesus Rubio on 10/1/23.
//

import SwiftUI

struct ListWeatherInfo2: View {
  var item: WeatherInfo
  
  var body: some View {
    List{
      ForEach(weatherData){item in
        WeatherRow(weather:item)
      }
    }
  }
}

struct ListWeatherInfo2_Previews: PreviewProvider {
  static var previews: some View {
    ListWeatherInfo2(item: WeatherInfo(image: "snow", temp: 5, city: "New York"))
  }
}
