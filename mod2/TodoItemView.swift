//
//  TodoView.swift
//  mod2
//
//  Created by Jesus Rubio on 10/1/23.
//

import SwiftUI

struct TodoItemView: View {
  @State var todos = [
    TodoItem("Eat"),
    TodoItem("Sleep"),
    TodoItem("Code")
  ]
  
    var body: some View {
      List($todos){ itm in
        TextField("Number",text: itm.title)
        
      }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoItemView()
    }
}
