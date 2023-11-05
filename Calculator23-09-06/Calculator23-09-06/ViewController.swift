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

    enum ErrorMessage {
        static let invalidDividend = "割られる数を入力してください"
        static let invalidDivisor = "割る数を入力してください"
        static let zeroDivisor = "割る数には0を入力しないでください"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        calculateResultLabel.text = ""
    }

    @IBAction private func didTapCalculateButton(_ sender: UIButton) {
        guard let dividend = Double(dividendNumTextField.text ?? "") else {
            alert(message: ErrorMessage.invalidDividend)
            return
        }

        guard let divisor = Double(divisorNumTextField.text ?? "") else {
            alert(message: ErrorMessage.invalidDivisor)
            return
        }

        guard divisor != 0 else {
            alert(message: ErrorMessage.zeroDivisor)
            return
        }

        let result = dividend / divisor
        calculateResultLabel.text = "\(result)"

    }

    private func alert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { (_) in
            self.dismiss(animated: true, completion: nil)
        }

        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}
