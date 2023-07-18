//
//  TaskView.swift
//  balance
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct TaskView: View {
    
    //Add a State property called showNewTask that is set to false
    @FetchRequest(
            entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
    var toDoItems: FetchedResults<ToDo>
    
    @State private var showNewTask = false
    var body: some View {
        VStack {
                HStack {
                        //Add a Text View containing the string "ToDoList" and modifiers here
                    Text("To Do List")
                            .font(.system(size : 40))
                            .fontWeight(.black)
                        //Add a Spacer here
                        Spacer()
                        //Add a Button here with Text("+") and delete any code in the action
                        Button(action: {
                            self.showNewTask = true
                        }) {
                            Text("+")
                                .font(.title)
                        }
                    }
                    //Add a padding modifier here
                    .padding()
                    //Add a Spacer here
                    Spacer()
                    
                    //Add a List View here
                    
                    List {
                        ForEach (toDoItems){ toDoItem in
                            if toDoItem.isImportant == true {
                                Text("‼️" + (toDoItem.title ?? "No title"))
                            } else {
                                                Text(toDoItem.title ?? "No title")
                            }
                            
                        }
                    }
                    
                    .listStyle(.plain)
                        //In Iteration 1, delte the Text View and add an if statement inside the list view that indicates to add !! to ToDoItems that are marked important
                            //In Iteration 2, add optionals to the Text views in the if statement
                                //In Iteration 2, add the onDelete modifier before the closing bracket of the For Each statement
                }
                
                //Add an if statement here that indicates if showNewTask is true, then NewToDoView will be displayed
                
                if showNewTask {
                     NewToDoView(title: "", isImportant: false, showNewTask: $showNewTask)

                        }
                
                    //In Iteration 1, bind toDoItems: $toDoItems in this if statement
                    //In Iteration 1, bind showNewTask: $showNewTask in this if statement
                    //In Iteration 2, delete the toDoItems: $toDoItems binding


            }
            //In Iteration 2, add the deleteTask function here

        }


struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView()
    }
}
