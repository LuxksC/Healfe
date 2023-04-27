//
//  StartViewController.swift
//  Healfe
//
//  Created by Sandra Monteiro de Castro on 11/04/23.
//

import Foundation
import UIKit

class StartViewController: UIViewController {
    // MARK: - Properties
    lazy var mainView = StartView()

    // MARK: - Life Cycle
//    override func loadView() {
//        super.loadView()
//        view = mainView
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
    }
}
