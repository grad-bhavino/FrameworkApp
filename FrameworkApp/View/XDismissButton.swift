//
//  XDismissButton.swift
//  FrameworkApp
//
//  Created by Bhavin  Oza on 2/19/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack() { //instead of using HStack for moving button tot the right, we could have ussed alignment for the parent Vstack as right, but that would move all the children of the vstack to the right
            Spacer()
            
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
