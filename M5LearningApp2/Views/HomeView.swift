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
        ScrollView {
            LazyVStack {
                ForEach(model.modules) { module in
                    ZStack {
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .aspectRatio(CGSize(width: 335, height: 175), contentMode: .fit)
                        HStack {
                            // Image
                            Image("swift")
                                .resizable()
                                .frame(width: 115, height: 115)
                                .clipShape(Circle())
                            Spacer()
                            // Text
                            VStack(alignment: .leading, spacing: 10) {
                                // Headline
                                Text("lean Swift").bold()
                                // Description
                                Text("some description").padding(.bottom, 20)
                                // Icons
                                HStack {
                                    // Number of lessons/questions
                                    Image(systemName: "text.book.closed")
                                        .resizable().frame(width:15, height:15)
                                    Text("20 Lessons").font(.caption)
                                    //Time
                                    Image(systemName: "clock")
                                        .resizable().frame(width:15, height: 15)
                                    Text("2 Hours").font(.caption)
                                }
                            }
                        }
                        .padding(.horizontal, 20)
                    }
                }
            }
            .padding()
        } }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ContentModel())
        
    }
}
