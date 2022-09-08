//
//  DetailViewModel.swift
//  MVVM_Lesson_and_Git_branching_practice
//
//  Created by Maks Kokos on 08.09.2022.
//

import Foundation

class DetailViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String("\(profile.name) \(profile.secondName) is \(profile.age) years old!")
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
    
}
