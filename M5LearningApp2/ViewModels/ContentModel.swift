//
//  ContentModel.swift
//  M5LearningApp2
//
//  Created by Rueiming Jamp on 7/19/23.
//

import Foundation

class ContentModel: ObservableObject {
    @Published var modules = [Module]()
    var styleData: Data?
    
    init() { getLocalData() }
    
    func getLocalData() {
        //Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do {
            // Read the file into a data object
            let jsonData = try Data(contentsOf: jsonUrl!)
            let testString = String(decoding: jsonData, as: UTF8.self)
            print(testString.count)
//            print(testString.prefix(10000))

            //Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            // Assign parsed modules to modules property
            self.modules = modules
            print(modules)
        }
        catch let error {
            // TODO log error
            print("Error in jsonDcoder: \(error)")
        }
        
        // Parse the style data
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        do {
            // Read the file into a data object
            let styleData = try Data(contentsOf: styleUrl!)
        
            // Assign parsed modules to modules property
            self.styleData = styleData
            print(styleData)
        }
        catch let error {
            // TODO log error
            print("Error in style data: \(error)")
        }
        
    }
}
