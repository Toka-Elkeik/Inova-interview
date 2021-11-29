//
//  ClassesViewModel.swift
//  Inova-Interview
//
//  Created by Toka elkeik on 11/29/21.
//

import Foundation

class ClassesViewModel {
    var classes: [ClassVideo]?
    
    // MARK: - Getters
    func getVideoAt(index: Int) -> ClassVideo? {
        return classes?[index]
    }
    
    // MARK: - API
    func getVideos() {
        
    }
}
