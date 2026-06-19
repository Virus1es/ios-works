//
//  ViewController.swift
//  sayHello
//
//  Created by Дмитрий Васильев on 02.05.2026.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var generalLabel: UILabel!
    var name: String! = "Dev🥰"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    func setupView() {
        generalLabel.text = "Hello!"
        generalLabel.textColor = .red
        generalLabel.font = UIFont.systemFont(ofSize: 20)
        generalLabel.isHidden = true
    }
    
    @IBAction func sayHello(_ sender: UIButton) {
        generalLabel.isHidden = false
        generalLabel.text = "Hello, \(name ?? "name")!"
        print("вызов метода")
    }
    
}

