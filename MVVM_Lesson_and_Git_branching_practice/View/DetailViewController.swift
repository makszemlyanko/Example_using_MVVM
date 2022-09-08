//
//  DetailViewController.swift
//  MVVM_Lesson_and_Git_branching_practice
//
//  Created by Maks Kokos on 08.09.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }

        self.textLabel.text = viewModel.description
        
    }


}
