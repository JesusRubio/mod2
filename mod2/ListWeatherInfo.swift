//
//  ListWeatherInfo.swift
//  mod2
//
//  Created by Jesus Rubio on 10/1/23.
//

import SwiftUI

struct ListWeatherInfo: View {
    var body: some View {
      List{
        ForEach(weatherData){item in
          HStack{
            Image(systemName:item.image)
              .frame(width:50, alignment:.center)
            Text("\(item.temp) ℉")
              .frame(width:80, alignment:.leading)
            Text("\(item.city)")
          }.font(.system(size:24))
        }
      }
    }
}

struct ListWeatherInfo_Previews: PreviewProvider {
    static var previews: some View {
        ListWeatherInfo()
    }
}
