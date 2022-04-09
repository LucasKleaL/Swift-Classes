//
//  ViewController.swift
//  Swift-Quiz
//
//  Created by Lucas Leal on 31/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var nameTextField: UITextField!
    var name:String?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let destination = segue.destination as?
                
                SecondViewController{
                destination.information = "Olá \(nameTextField.text ?? "")"
            }
    }
    
    
}

