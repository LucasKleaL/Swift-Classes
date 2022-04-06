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
    var questions:[[String]] = [ //questionLabel, firstAwser, secondAwser, thirdAwser, fourthAwser, correctAwser
        ["Que carro é esse?", "Fusca", "M4", "Gol G6", "Z4", "M4"],
        ["Qual modelo de Tesla é esse?", "Model Y", "Model 3", "Roadster", "Model 1", "Model 3"],
        ["Qual modelo de Gol é esse?", "G4", "GTI", "G6", "Quadrado", "G6"]
    ]
    var questionsImages:Array = ["bmwM4", "teslaModel3", "golG6"]
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var buttonIniciar: UIButton!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstAnswerLabel: UILabel!
    @IBOutlet weak var secondAnswerLabel: UILabel!
    @IBOutlet weak var thirdAnswerLabel: UILabel!
    @IBOutlet weak var fourthAnswerLabel: UILabel!
    @IBOutlet weak var correctAwserLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = information
        buttonA.isEnabled = false
        buttonB.isEnabled = false
        buttonC.isEnabled = false
        buttonD.isEnabled = false
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAPressed(_ sender: Any) {
        let userAwser = questions[currentQuestion][1]
        verifyUserAwser(userAwser: userAwser)
    }
    
    @IBAction func buttonBPressed(_ sender: Any) {
        let userAwser = questions[currentQuestion][2]
        verifyUserAwser(userAwser: userAwser)
    }
    
    @IBAction func buttonCPressed(_ sender: Any) {
        let userAwser = questions[currentQuestion][3]
        verifyUserAwser(userAwser: userAwser)
    }
    
    @IBAction func buttonDPressed(_ sender: Any) {
        let userAwser = questions[currentQuestion][4]
        verifyUserAwser(userAwser: userAwser)
    }
    
    @IBAction func buttonIniciarPressed(_ sender: Any) {
        currentQuestion = questionsCounter
        print("array len: \(questions.count)")
        if (questionsCounter == 0) { //primeira rodada do quiz
            buttonIniciar.setTitle("Próximo", for: .normal)
            buttonIniciar.isEnabled = false
            buttonA.isEnabled = true
            buttonB.isEnabled = true
            buttonC.isEnabled = true
            buttonD.isEnabled = true
            setQuestionLabels(question: String(questions[currentQuestion][0]), first: String(questions[currentQuestion][1]), second: String(questions[currentQuestion][2]), third: String(questions[currentQuestion][3]), fourth: String(questions[currentQuestion][4]))
        }
        else if (questionsCounter < questions.count) { //execução do quiz após a primeira rodada
            setQuestionLabels(question: String(questions[currentQuestion][0]), first: String(questions[currentQuestion][1]), second: String(questions[currentQuestion][2]), third: String(questions[currentQuestion][3]), fourth: String(questions[currentQuestion][4]))
            resetCorrectAwser()
            imageLabel.image = UIImage(named:questionsImages[questionsCounter])
        }
        else { //fim do quiz
            setQuestionLabels(question: "O quiz chegou ao fim!", first: "", second: "", third: "", fourth: "")
            resetCorrectAwser()
            buttonIniciar.isEnabled = false
            buttonA.isEnabled = false
            buttonB.isEnabled = false
            buttonC.isEnabled = false
            buttonD.isEnabled = false
        }
        questionsCounter += 1
    }
    
    func verifyUserAwser(userAwser:String) {
        let correctAwser = questions[currentQuestion][5]
        buttonIniciar.isEnabled = true
        print("correct \(correctAwser) user \(userAwser)")
        if (userAwser == correctAwser) {
            correctAwserLabel.text = "Resposta correta!"
            correctAwserLabel.backgroundColor = UIColor.green
        }
        else {
            correctAwserLabel.text = "Resposta errada!"
            correctAwserLabel.backgroundColor = UIColor.red
        }
    }
 	
    func setQuestionLabels(question:String, first:String, second:String, third:String, fourth:String) {
        questionLabel.text! = question
        firstAnswerLabel.text! = first
        secondAnswerLabel.text! = second
        thirdAnswerLabel.text! = third
        fourthAnswerLabel.text! = fourth
    }
    
    func resetCorrectAwser() {
        correctAwserLabel.text = ""
        correctAwserLabel.backgroundColor = UIColor.clear
    }
}
