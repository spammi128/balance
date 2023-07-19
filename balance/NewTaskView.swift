//
//  NewTaskView.swift
//  balance
//
//  Created by scholar on 7/18/23.
//

//
//  NewToDoView.swift
//  ToDoList_Help
//
//  Created by scholar on 6/19/23.
//

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI

struct NewTaskView: View {
    
    @Environment(\.managedObjectContext) var context
    
    @State var title: String
    
//    @Binding var toDoItems: [ToDoItem]
    
    @Binding var showNewTask : Bool
    
    var body: some View {

            
            VStack{
                
                TextField("Enter title here", text: $title)
                    .textFieldStyle(.roundedBorder)
                
                Button(action: { self.addTask(title: self.title)
                    
                    self.showNewTask = false
                    
                }) {
                    Text("Add")
                    
                }
                .buttonStyle(.borderedProminent)
                
            }
            .padding()
        }

    
    private func addTask(title: String){
        
        let task = ToDo(context: context)
            task.id = UUID()
            task.title = title
            
            
            do {
                try context.save()
            } catch {
                print(error)
            }
                
            }
}
    

    
    struct NewTaskView_Previews: PreviewProvider {
        static var previews: some View {
            NewTaskView(title: "",
            
//                toDoItems: .constant([]),
                        
            showNewTask: .constant(true)
            
            )
        }
    }

