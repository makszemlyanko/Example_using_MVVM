//
//  TableViewModelType.swift
//  MVVM_Lesson_and_Git_branching_practice
//
//  Created by Maks Kokos on 08.09.2022.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectedRow(atIndexPath indexPath: IndexPath)
}
