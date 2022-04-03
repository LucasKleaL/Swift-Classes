//
//  ViewController.swift
//  Calculadora
//
//  Created by ALUNO on 30/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1TextField: UITextField!
    
    @IBOutlet weak var num2TextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func operationButtonPressed(_ sender: UIButton) {
        let num1:Int = Int(num1TextField.text!) ?? 0
        let num2:Int = Int(num2TextField.text!) ?? 0

        
        var result = 0
        switch sender.tag{
        case 0:
            result = num1 + num2
            break
        case 1:
            result = num1 - num2
            break
        case 2:
            result = num1 * num2
            break
        case 3:
            result = num1 / num2
            break
        default:
            result = 0
        }
        resultadoLabel.text = "Result:\(result)"
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SecondViewController{
            destination.information = "Go to Main"
        }
    }
    
}

