//
//  ViewController.swift
//  xctext_sample
//
//  Created by yhonda on 2019/09/30.
//  Copyright © 2019 yhonda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var taxTextField: UITextField!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var partsTextField: UITextField!
    @IBOutlet weak var colorTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    let sampleLogic = SampleLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

private extension ViewController {
    
    @IBAction func didTapTaxButton() {
        guard let text = taxTextField.text, let price = Double(text) else {
            taxLabel.text = ""
            return
        }
        let taxIncludedPrice = sampleLogic.taxIncludedPrice(price: price)
        taxLabel.text = taxIncludedPrice.description
    }
    
    @IBAction func didTapPartsButton() {
        guard let parts = partsTextField.text else { return }
        let message = sampleLogic.iPhone11ProBackParts(parts: parts) ? "あるよ" : "ないよ"
        let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func didTapImageButton() {
        guard let color = colorTextField.text else { return }
        imageView.image = sampleLogic.iPhone11ProImage(color: color)
    }
}
