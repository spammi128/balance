//
//  RatingView.swift
//  balance
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct RatingView: View {
    @Binding var rating : Int
    
    var label = ""
    var maximunRating = 5
    
    var offImage : Image?
    var onImage = Image(systemName: "star.fill")
    
    var offColor = Color.gray
    var onColor = Color("leafGreen")
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    func image(for number: Int) -> Image{
        
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: .constant(4))
    }
}
