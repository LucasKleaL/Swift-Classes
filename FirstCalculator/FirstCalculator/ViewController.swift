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
    var isResult:Bool?
    var visorText:String?
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        actualValue = ""
        visorText = ""
        isResult = false
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button0(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "0"
        visorText! += "0"
        textLabel.text = visorText!
    }
    
    @IBAction func button1(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "1"
        visorText! += "1"
        textLabel.text = visorText!
    }
    
    @IBAction func button2(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "2"
        visorText! += "2"
        textLabel.text = visorText!
    }
    
    @IBAction func button3(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "3"
        visorText! += "3"
        textLabel.text = visorText!
    }
    
    @IBAction func button4(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "4"
        visorText! += "4"
        textLabel.text = visorText!
    }
    
    @IBAction func button5(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "5"
        visorText! += "5"
        textLabel.text = visorText!
    }
    
    @IBAction func button6(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "6"
        visorText! += "6"
        textLabel.text = visorText!
    }
    
    @IBAction func button7(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "7"
        visorText! += "7"
        textLabel.text = visorText!
    }
    
    @IBAction func button8(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "8"
        visorText! += "8"
        textLabel.text = visorText!
    }
    
    @IBAction func button9(_ sender: UIButton) {
        if(isResult!) {
            visorText! = ""
            isResult = false
        }
        actualValue! += "9"
        visorText! += "9"
        textLabel.text = visorText!
    }
    
    @IBAction func buttonResult(_ sender: UIButton) {
        
        if(!isResult!) {
            isResult = true
        }
        
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
        
        visorText! += " = \(strResult)"
        textLabel.text = visorText!
        
        print("Result \(strVal1) \(operation!) \(strVal2) = \(strResult)")
    }
    
    @IBAction func buttonSum(_ sender: UIButton) {
        operation = "sum"
        visorText! += " + "
        textLabel.text = visorText!
        val1 = Int(actualValue!)
        actualValue = ""
    }
    
    @IBAction func buttonSubtract(_ sender: UIButton) {
        operation = "subtract"
        visorText! += " - "
        textLabel.text = visorText!
        val1 = Int(actualValue!)
        actualValue = ""
    }
    
    @IBAction func buttonMultiply(_ sender: UIButton) {
        operation = "multiply"
        visorText! += " * "
        textLabel.text = visorText!
        val1 = Int(actualValue!)
        actualValue = ""
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        operation = "divide"
        visorText! += " / "
        textLabel.text = visorText!
        val1 = Int(actualValue!)
        actualValue = ""
    }
    
    @IBAction func buttonClear(_ sender: UIButton) {
        visorText = ""
        actualValue = ""
        textLabel.text = visorText!
    }
    
    func sum() -> Float {
        print("sum")
        return Float(Float(val1!) + Float(val2!))
    }
    
    func subtract() -> Float {
        print("subtract")
        return Float(Float(val1!) - Float(val2!))
    }
    
    func multiply() -> Float {
        print("multiply")
        return Float(Float(val1!) * Float(val2!))
    }
    
    func divide() -> Float {
        print("divide")
        return Float(Float(val1!) / Float(val2!))
    }
    
    
}
