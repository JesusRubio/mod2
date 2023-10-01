//
//  WeatherRow.swift
//  mod2
//
//  Created by Jesus Rubio on 10/1/23.
//

import Foundation
import SwiftUI

struct WeatherRow: View {
  var weather: WeatherInfo
  var body: some View {
      HStack {
        Image(systemName: weather.image)
          .frame(width: 50, alignment: .leading)
        Text("\(weather.temp)°F")
          .frame(width: 80, alignment: .leading)
        Text(weather.city)
      }
      .font(.system(size: 25))
      .padding()
  }
}
