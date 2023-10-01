//
//  TodoItem.swift
//  mod2
//
//  Created by Jesus Rubio on 10/1/23.
//

import Foundation

struct TodoItem: Identifiable{
  let id = UUID()
  var title: String
  
  init(_ mytitle:String)
  {
    title = mytitle
  }
}
