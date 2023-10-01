//
//  PlayWithList.swift
//  mod2
//
//  Created by Jesus Rubio on 10/1/23.
//

import SwiftUI

struct PlayWithList: View {
 
  let letters = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p"]
  
  var body: some View {
    VStack
    {
      ScrollView(.vertical, showsIndicators:false)
      {
        ForEach(letters, id: \.self){
          letter in
          Image(systemName: letter)
            .font(.largeTitle)
            .foregroundColor(Color.yellow)
            .frame(width: 50, height: 50)
            .background(Color.blue)
            .symbolVariant(.circle.fill)
        }
      }.frame(width:50, height:300)
      
      ScrollView(.horizontal, showsIndicators:true) {
        HStack{
          ForEach(letters, id: \.self){
            name in
            Image(systemName: name)
              .font(.largeTitle)
              .foregroundColor(Color.yellow)
              .frame(width: 50, height: 50)
              .background(Color.blue)
              .symbolVariant(.circle.fill)
          }
        }
      }.frame(width:300, height:50)
    }
  }
}

struct PlayWithList_Previews: PreviewProvider {
    static var previews: some View {
        PlayWithList()
    }
}
