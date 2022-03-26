//
//  ViewController.swift
//  FirstCalculator
//
//  Created by Lucas Leal on 26/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    var actualValue:String?
    var val1:Int?
    var val2:Int?
    var operation:String?
    var result:Float?

    override func viewDidLoad() {
        actualValue = ""
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button0(_ sender: UIButton) {
        actualValue! += "0"
    }
    
    @IBAction func button1(_ sender: UIButton) {
        actualValue! += "1"
    }
    
    @IBAction func button2(_ sender: UIButton) {
        actualValue! += "2"
    }
    
    @IBAction func button3(_ sender: UIButton) {
        actualValue! += "3"
    }
    
    @IBAction func button4(_ sender: UIButton) {
        actualValue! += "4"
    }
    
    @IBAction func button5(_ sender: UIButton) {
        actualValue! += "5"
    }
    
    @IBAction func button6(_ sender: UIButton) {
        actualValue! += "6"
    }
    
    @IBAction func button7(_ sender: UIButton) {
        actualValue! += "7"
    }
    
    @IBAction func button8(_ sender: UIButton) {
        actualValue! += "8"
    }
    
    @IBAction func button9(_ sender: UIButton) {
        actualValue! += "9"
    }
    
    @IBAction func buttonResult(_ sender: UIButton) {
        
        val2 = Int(actualValue!)
        actualValue = ""
        
        if (operation == "sum") {
            result = sum()
        }
        else if (operation == "subtract") {
            result = subtract()
        }
        else if (operation == "multiply") {
            result = multiply()
        }
        else if (operation == "divide") {
            result = divide()
        }
        
        let strResult = String(result!)
        let strVal1 = String(val1!)
        let strVal2 = String (val2!)
        
        print("Result \(strVal1) \(operation!) \(strVal2) = \(strResult)")
    }
    
    
    @IBAction func buttonSum(_ sender: UIButton) {
        operation = "sum"
        val1 = Int(actualValue!)
        actualValue = ""
    }
    
    @IBAction func buttonSubtract(_ sender: UIButton) {
        operation = "subtract"
        val1 = Int(actualValue!)
        actualValue = ""
    }
    
    @IBAction func buttonMultiply(_ sender: UIButton) {
        operation = "multiply"
        val1 = Int(actualValue!)
        actualValue = ""
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        operation = "divide"
        val1 = Int(actualValue!)
        actualValue = ""
    }
    
    func sum() -> Float {
        print("sum")
        return Float(val1! + val2!)
    }
    
    func subtract() -> Float {
        print("subtract")
        return Float(val1! - val2!)
    }
    
    func multiply() -> Float {
        print("multiply")
        return Float(val1! * val2!)
    }
    
    func divide() -> Float {
        print("divide")
        return Float(val1! / val2!)
    }
    
}
