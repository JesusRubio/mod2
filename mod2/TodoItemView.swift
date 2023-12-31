//
//  TodoView.swift
//  mod2
//
//  Created by Jesus Rubio on 10/1/23.
//

import SwiftUI

struct TodoItemView: View {
  @State var todos = [
    TodoItem("Eat1"),
    TodoItem("Sleep2"),
    TodoItem("Code3")
  ]
  
    var body: some View {
      List($todos){ $itmX in
        TextField("Number",text: $itmX.title)
        
        Text(itmX.title)
        
      }
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoItemView()
    }
}
