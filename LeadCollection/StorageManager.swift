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
        
    }
    
    func getDataFromLocalStorage() -> [FormData] {
        return collectionData
    }
    
}
