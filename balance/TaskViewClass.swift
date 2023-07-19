//
//  TaskViewClass.swift
//  balance
//
//  Created by scholar on 7/19/23.
//

import Foundation

class ToDoItem: Identifiable {
    
    var id = UUID()
    
    var title = ""
    
    init (title : String) {
        self.title = title
        
    }
    
}
