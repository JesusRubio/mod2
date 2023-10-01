//
//  NumList.swift
//  mod2
//
//  Created by Jesus Rubio on 10/1/23.
//

import SwiftUI

struct NumList: View {
  @State var numbers = [1,2,3,4,5,6]
  var body: some View {
    NavigationView{
      List{
        ForEach(numbers, id:\.self){
          number in Text("Hello, World! \(number)")
        }.onMove(perform: self.moveRow)
         .onDelete(perform: self.deleteItem)
         
      }.navigationBarTitle("MyTitle",displayMode:.inline)
        .navigationBarItems(trailing: Button("Add", action: addItemToRow))
        .navigationBarItems(trailing:EditButton())
    }
  }
  
  private func deleteItem(at idx: IndexSet){
    self.numbers.remove(atOffsets: idx)
  }

  private func addItemToRow() {
    self.numbers.append(Int.random(in: 6 ..< 99))
  }
  
  private func moveRow(source: IndexSet, destination: Int)
  {
    numbers.move(fromOffsets: source, toOffset:destination)
  }
}



struct NumList_Previews: PreviewProvider {
    static var previews: some View {
        NumList()
    }
}
