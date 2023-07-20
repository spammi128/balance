//
//  MentalHealthResources.swift
//  balance
//
//  Created by scholar on 7/18/23.
//

import SwiftUI

struct MentalHealthResources: View {
    var body: some View {
        ZStack{
            Color("lightGreen")
                .ignoresSafeArea()
            VStack{
                
                Spacer()
                
                Text("mental health resources")
                    .font(.title)
                
                Spacer()
                ZStack{
                    RoundedRectangle(cornerRadius: 25) .fill(Color("mediumGreen"))
                        .frame(width: 350, height: 500)
                    VStack(spacing: 20){
                        Link("professional help/treatment",
                              destination: URL(string: "https://www.samhsa.gov/find-help/national-helpline")!)
                        
                        Link("an lgbtq+ safe space for mental health aid",
                              destination: URL(string: "https://www.thetrevorproject.org")!)
                        
                        Link("a self guide to mental health improvement",
                              destination: URL(string: "https://www.nimh.nih.gov/health/topics/caring-for-your-mental-health")!)
                        
                        Link("additional mental health aid",
                              destination: URL(string: "https://www.mentalhealthfirstaid.org/mental-health-resources/")!)
                        
                        Link("suicide prevention hotline",
                             destination: URL(string: "https://988lifeline.org/")!)
                        .bold()

                        
                        
                    }
                    .padding(.horizontal, 0.0)
                }
                
                Spacer()
            } .padding(7)
        }

    }
}

struct MentalHealthResources_Previews: PreviewProvider {
    static var previews: some View {
        MentalHealthResources()
    }
}
