//
//  BreatheView.swift
//  balance
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct BreatheView: View {
    var body: some View {
        ZStack{
            Color("lightGreen")
                .ignoresSafeArea()
            VStack(spacing:25){
                HStack{
                    Spacer()
                    NavigationLink(destination: MentalHealthResources()){
                        Image("exclamation")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50, alignment: .topLeading)
                    }
                }.padding([.top, .trailing])
                
                Spacer()
                    .frame(height: 20.0)
                
                Rectangle()
                    .fill(Color("leafGreen"))
                    .frame(width: 300, height: 3)
                
                Text("breathe")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Image("sunflower")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .topLeading)
                
                Text("take a few minutes out of your busy day to unwind.")
                    .font(.title)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                
                Link("Start", destination: URL(string: "https://www.youtube.com/watch?v=aNXKjGFUlMs")!)
                    .padding(.all)
                    .foregroundColor(.black)
                    .background(Color("mediumGreen"))
                
                Rectangle()
                    .fill(Color("leafGreen"))
                    .frame(width: 300, height: 3)
                
                Spacer()
                

            }
            .padding(.all)
            
        }

    }
}

struct BreatheView_Previews: PreviewProvider {
    static var previews: some View {
        BreatheView()
    }
}
