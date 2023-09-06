//
//  ViewController.swift
//  Calculator23-09-06
//
//  Created by 副山俊輔 on 2023/09/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var dividendNumTextField: UITextField!
    @IBOutlet private weak var divisorNumTextField: UITextField!
    @IBOutlet private weak var divisionLabel: UILabel!
    @IBOutlet private weak var calculateButton: UIButton!
    @IBOutlet private weak var calculateResultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        divisionLabel.text = "÷"
        calculateButton.setTitle("計算", for: .normal)
        calculateResultLabel.text = ""
    }

    @IBAction private func didTapCalculateButton(_ sender: UIButton) {
        divisionResult()
    }

    private func divisionResult() {
        guard let dividendNum = Double(dividendNumTextField.text ?? ""),
              let divisorNum = Double(divisorNumTextField.text ?? "")
        else { return }

        let result = dividendNum / divisorNum
        calculateResultLabel.text = "\(result)"
    }
}
