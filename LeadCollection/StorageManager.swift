//
//  StorageManager.swift
//  LeadCollection
//
//  Created by Emil Lenard on 21/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import Foundation

class StorageManager {
    static let shared = StorageManager()
    private init() {}
    
    private var collectionData: [FormData] = []
    
    func addData(formData: FormData) {
        self.collectionData.append(formData)
    }
    
    func getData() -> [FormData] {
        return collectionData
    }
    
    func saveDataToLocalStorage(data:[FormData]) {
        if let jsonData = try? JSONEncoder().encode(collectionData),
            let jsonString = String(data: jsonData, encoding: .utf8) {
                UserDefaults.standard.set(jsonString, forKey: "collectedData")
        }
    }
    
    func getDataFromLocalStorage() {
        if  let jsonString = UserDefaults.standard.string(forKey: "collectedData"),
            let jsonData = jsonString.data(using: .utf8),
            let decodedData = try? JSONDecoder().decode([FormData].self, from: jsonData) {
            collectionData = decodedData
        }
        
    }
    
}
