//
//  ContentView.swift
//  balance
//
//  Created by Scholar on 7/17/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //@Environment(\.managedObjectContext)
    
    @State private var rating = 0

    //private var viewContext
    
    

    
    var body: some View {
        NavigationStack{
            ZStack{
                
                Color("lightGreen")
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    Text("welcome to balance!")
                        .font(.title)
                    
                    Spacer()
                    
                    Text("how are you feeling today?")
                    RatingView(rating: $rating)
                    
                    Text("anything special for today?")
                        
                   
                    
                    
                    NavigationLink(destination: TaskView()){
                        Image("arrow")
                            .frame(width: 50.0)
                            
                    }
                    
                }
            }
        }
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
