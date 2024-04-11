//
//  UnderlinedTextField.swift
//  Task9-10-Storyboard-NavController
//
//  Created by Andrei Shpartou on 11/04/2024.
//

import UIKit

class UnderlinedView: UITextField {
    let underlineLayer = CALayer()

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        self.layer.addSublayer(underlineLayer)
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        setupUnderlinedLayer()
    }

    private func setupUnderlinedLayer() {
        var frame = self.bounds
        frame.origin.y = frame.height - 1
        frame.size.height = 1

        underlineLayer.frame = frame
        underlineLayer.backgroundColor = UIColor.systemGray3.cgColor
    }
}
