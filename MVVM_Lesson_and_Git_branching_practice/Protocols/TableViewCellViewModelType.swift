//
//  TableViewCellViewModelType.swift
//  MVVM_Lesson_and_Git_branching_practice
//
//  Created by Maks Kokos on 08.09.2022.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String { get }
    var age: String { get }
}
