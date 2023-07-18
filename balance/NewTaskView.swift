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
    
    //In Iteration 2, add @Environment here
    @Environment(\.managedObjectContext) var context
    //Add a State property called title that will hold a String
    @State var title : String
    //Add a State property called isImportant that will hold a Boolean
    @State var isImportant : Bool
    //Bind the ToDoItems array here

        //Delete the ToDoItems array binding in iteration 2
    
    //Bind the showNewTask property here
    @Binding var showNewTask : Bool
    
        var body: some View {
        VStack {
            //Add Text View containing "Task title" here
            Text("Task title")
                .font(.title)
                .fontWeight(.bold)
            //Add TextField here with the Text "Enter task description" and binded to the title state property (text: $title)
            TextField("Enter task description...", text: $title)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            //Add Toggle here that is binded to isImportant (isOn: $isImportant) and the text "Is it important?"
            Toggle(isOn: $isImportant){
                Text("Is it important?")
                
                
            }
            //Add a padding modifier
            .padding()
            //Add Button here, delete any code in the action and with the text "Add"
            
            Button(action: { self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
                
            }) {
                Text("Add")
                    
            }
            
            .buttonStyle(.borderedProminent)
            .tint(.teal)
            
    
            //Add a padding modifier
        }
    }
    //Add the private function addTask here
        //In Iteration 2, update the function to save input to Core Data
    
    private func addTask (title : String, isImportant: Bool = false){
        
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(title : "", isImportant : false,
            //Add toDoItems: .constant([]) here (Iteration 1)
                   
            //Add showNewTask: .constant(true) (Iteration 1)
                    showNewTask: .constant(true)
            //Delete toDoItems: .constant([]) (Iteration 2_


        )
    }
}

