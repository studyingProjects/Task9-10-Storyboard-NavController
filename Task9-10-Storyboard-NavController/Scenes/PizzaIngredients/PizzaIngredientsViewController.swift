//
//  PizzaIngredientsViewController.swift
//  Task9-10-Storyboard-NavController
//
//  Created by Andrei Shpartou on 12/04/2024.
//

import UIKit

class PizzaIngredientsViewController: UIViewController {
    @IBOutlet private weak var pizzaImage: UIImageView?
    @IBOutlet private weak var pizzaTitle: UILabel?
    var image: UIImage?
    var pizzaName: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        pizzaImage?.image = image
        pizzaTitle?.text = pizzaName
    }
}
