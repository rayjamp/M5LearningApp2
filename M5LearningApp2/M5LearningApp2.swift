//
//  M5LearningApp2App.swift
//  M5LearningApp2
//
//  Created by Rueiming Jamp on 7/19/23.
//

import SwiftUI

@main
struct M5LearningApp2: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
