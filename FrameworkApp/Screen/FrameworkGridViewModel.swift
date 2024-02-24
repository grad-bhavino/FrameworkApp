//
//  FrameworkGridViewModel.swift
//  FrameworkApp
//
//  Created by Bhavin  Oza on 2/18/24.
//

import SwiftUI

//we use class, since we want to store states here
//final, since no subclassing
final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFrmwrk: Framework?
    {
        didSet {
            isShowingDetailView = true
        }
    }
    
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @Published var isShowingDetailView = false
}
