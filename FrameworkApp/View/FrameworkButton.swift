//
//  FrameworkButton.swift
//  FrameworkApp
//
//  Created by Bhavin  Oza on 2/18/24.
//

import SwiftUI

struct FrameworkButton: View {
    let title: String
    
    var body: some View {
        Text(title) //the chain of calls here is one of the most important aspect of the SwiftUI
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(10.0)
    }
}

#Preview {
    FrameworkButton(title: "Learn More")
}
