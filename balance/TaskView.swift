//
//  TaskView.swift
//  balance
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct TaskView: View {
    
    @Environment(\.managedObjectContext) var context
    
    @State private var showNewTask = false
    
    @FetchRequest(
        entity: ToDo.entity(), sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
    
    var toDoItems: FetchedResults<ToDo>
    
    var body: some View {
        ZStack{
            Color("lightGreen")
                .ignoresSafeArea()
            
            VStack{
                
                HStack{
                    Text("To Do List")
                        .font(.system(size: 40))
                        .fontWeight(.black)
                    
                    Spacer()
                    
                    Button(action: {
                        self.showNewTask = true
                    }) {
                        Text("+")
                            .font(.title)
                    }
                }
                .padding()
                
                Spacer()
                
                                
                List {
                    ForEach (toDoItems) { toDoItem in
                        Text(toDoItem.title ?? "nil")
                            .listRowBackground(Color("lightGreen"))
                    }
                            }
                .listStyle(.plain)
                .padding()
                
                
            }
            
            
            
            if showNewTask {
                NewTaskView(title: "", showNewTask: $showNewTask)
                //            NewTaskView(title: "", toDoItems: $toDoItems, showNewTask: $showNewTask)
            }
        }
    }
}
    
    struct TaskView_Previews: PreviewProvider {
        static var previews: some View {
            TaskView()
        }
    }


