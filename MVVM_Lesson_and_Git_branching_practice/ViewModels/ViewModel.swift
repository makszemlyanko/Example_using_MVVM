//
//  ViewModel.swift
//  MVVM_Lesson_and_Git_branching_practice
//
//  Created by Maks Kokos on 08.09.2022.
//

import Foundation


class ViewModel: TableViewViewModelType {
    
    private var selectedIndexPath: IndexPath?
    
    var profiles = [
        Profile(name: "Max", secondName: "Kracks", age: 30),
        Profile(name: "Span", secondName: "Jub", age: 15),
        Profile(name: "Gir", secondName: "Fan", age: 50)
    ]
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectedRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
    
}
