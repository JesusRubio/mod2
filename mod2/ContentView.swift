//
//  ContentView.swift
//  mod2
//
//  Created by Jesus Rubio on 10/1/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      
        VStack {
          List(){
            HStack{
              Spacer()
              Text("Cat Show")
              Spacer()
            }
            Image(systemName: "cat")
            Image("cat01")
              .resizable()
              .MyStyle()
            Image("cat02")
              .resizable()
              .MyStyle()
            Image("cat03")
              .resizable()
              .MyStyle()
          }
        }
        .padding()
    }
}

extension View{
  func MyStyle()->some View{
    self.aspectRatio(contentMode: .fill)
      .frame(width:300, height:300)
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.blue))
      .shadow(radius:10)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
