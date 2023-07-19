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
                
                VStack (spacing: 20) {
                    
                    Spacer()
                    
                    Text("welcome to balance!")
                        .font(.title)
                    
                    Spacer()
                    
                    Text("how are you feeling today?")
                    
                    RatingView(rating: $rating)
                    
                    Text("what emoji best describes your mood right now?")
    
                    DropDown()
                        
                    NavigationLink(destination: TaskView()){
                        Image("arrow")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
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


struct DropDown : View {

    @State var mood = "happy"
    @State var expand = false
    
    var body : some View{
        
        VStack{
            
            HStack{
                Text("Expand")
                    .fontWeight(.heavy)
                
                Image(systemName: expand ? "chevron.up" : "chevron.down")
                    .resizable()
                    .frame(width: 13, height: 6)
            }.onTapGesture{
                
                self.expand.toggle()
            }
            
            if expand{
                Button(action: {
                    
                }) {
                    Text("😄 happy").padding()
                }.foregroundColor(.black)
                
                Button(action: {
                    mood = "overwhelmed"
                }) {
                    Text("🤯 overwhelmed").padding()
                }.foregroundColor(.black)
                
                Button(action: {
                    mood = "sad"
                }) {
                    Text("☹️ sad").padding()
                }.foregroundColor(.black)
                
                Button(action: {
                   mood = "unmotivated"
                }) {
                    Text("🫤 unmotivated").padding()
                }.foregroundColor(.black)
                
                Button(action: {
                   mood = "peaceful"
                }) {
                    Text("😌 at peace").padding()
                }.foregroundColor(.black)
            }
            
        }
            .cornerRadius(20)
            .padding(7)

    }
}
