//
//  ViewController.swift
//  Task9-10-Storyboard-NavController
//
//  Created by Andrei Shpartou on 11/04/2024.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet private weak var emailTextField: UnderlinedView?
    @IBOutlet private weak var passwordTextField: UnderlinedView?
    // MARK: - LyfeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        initHideKeyboard()
        setupSubViews()
    }
    // MARK: - Setup view
    private func setupSubViews() {
        emailTextField?.delegate = self
        passwordTextField?.delegate = self
    }
}
// MARK: - UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
// MARK: - Hide keyboard
private extension ViewController {
    private func initHideKeyboard() {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        view.addGestureRecognizer(gestureRecognizer)
    }

    @objc
    private func hideKeyboard() {
        view.endEditing(true)
    }
}
