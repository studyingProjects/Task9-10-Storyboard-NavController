//
//  PizzaListViewController.swift
//  Task9-10-Storyboard-NavController
//
//  Created by Andrei Shpartou on 11/04/2024.
//

import UIKit

class PizzaListViewController: UIViewController {
    @IBOutlet private weak var margharittaImageView: UIImageView?
    @IBOutlet private weak var margharittaLabel: UILabel?
    @IBOutlet private weak var pepperoniImageView: UIImageView?
    @IBOutlet private weak var pepperoniLabel: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.tintColor = .black
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        var image: UIImage?
        var pizzaName: String?

        if segue.identifier == "MargharittaSegue" {
            image = margharittaImageView?.image
            pizzaName = margharittaLabel?.text
        }

        if segue.identifier == "PepperoniSegue" {
            image = pepperoniImageView?.image
            pizzaName = pepperoniLabel?.text
        }

        if let pizzaIngredientsVC = segue.destination as? PizzaIngredientsViewController {
            pizzaIngredientsVC.image = image
            pizzaIngredientsVC.pizzaName = pizzaName
        }
    }
}
