//
//  SecondViewController.swift
//  Swift-Quiz
//
//  Created by Lucas Leal on 31/03/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    public var information = ""
    public var questionsCounter:Int = 0
    public var currentQuestion:Int = 0
    var questions:[Array] = [["Que carro é esse?", "Fusca", "M4", "Gol G6", "Z4", "M4"], []]
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var buttonIniciar: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstAnswerLabel: UILabel!
    @IBOutlet weak var secondAnswerLabel: UILabel!
    @IBOutlet weak var thirdAnswerLabel: UILabel!
    @IBOutlet weak var fourthAnswerLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = information
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonA(_ sender: Any) {
        let userAwser = questions[currentQuestion][1]
        let correctAwser = questions[currentQuestion][5]
        print("correct \(correctAwser) user \(userAwser)")
        if (userAwser == correctAwser) {
            
        }
    }
    
    @IBAction func buttonB(_ sender: Any) {
    }
    
    @IBAction func buttonC(_ sender: Any) {
    }
    
    @IBAction func buttonD(_ sender: Any) {
    }
    
    @IBAction func buttonIniciarPressed(_ sender: Any) {
        if (questionsCounter == 0) {
            buttonIniciar.setTitle("Próximo", for: .normal)
        }
        currentQuestion = questionsCounter
        questionLabel.text! = questions[questionsCounter][0]
        firstAnswerLabel.text! = questions[questionsCounter][1]
        secondAnswerLabel.text! = questions[questionsCounter][2]
        thirdAnswerLabel.text! = questions[questionsCounter][3]
        fourthAnswerLabel.text! = questions[questionsCounter][4]
        
        questionsCounter += 1
    }
    
    
 	

}
