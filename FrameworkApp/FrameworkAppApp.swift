//
//  FrameworkAppApp.swift
//  FrameworkApp
//
//  Created by Bhavin  Oza on 2/18/24.
//

import SwiftUI

@main
struct FrameworkAppApp: App {
    var body: some Scene {
        WindowGroup {
            FrameworkGridView()
                .preferredColorScheme(.dark)
        }
    }
}
