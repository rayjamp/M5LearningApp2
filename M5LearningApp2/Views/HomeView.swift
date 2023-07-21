//
//  ContentView.swift
//  M5LearningApp2
//
//  Created by Rueiming Jamp on 7/19/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var model: ContentModel
    var body: some View {
        NavigationView {
            VStack (alignment: .leading){
                Text("What do you want to do today").padding(.leading, 20)
                
                ScrollView {
                    LazyVStack {
                        ForEach(model.modules) { module in
                            // Learning card
                            HomeViewRow(image: module.content.image, title: "learn \(module.category)", description: module.content.description, count: "\(module.content.lessons.count) Lessons", time: module.content.time)
                            // Test card
                            HomeViewRow(image: module.test.image, title: "learn \(module.category) test", description: module.test.description, count: "\(module.test.questions.count) Lessons", time: module.test.time)                }
                    }
                    .padding()
                } }
            .navigationTitle("Get Started")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
        
    }
}
