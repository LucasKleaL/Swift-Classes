//
//  QuizViewController.swift
//  QuizApp
//
//  Created by ALUNO on 06/04/22.
//

import UIKit

class QuizViewController: UIViewController {

    // MARK: OUTLETS
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet var questionButtons: [UIButton]!
    var currentQuestion = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestionView(question: DataModel.shared().question[currentQuestion])
        // Do any additional setup after loading the view.
    }
    // MARK: Update
    func updateQuestionView(question:Question){
        imageView.image = UIImage(named: question.imageName)
        questionLabel.text = question.questionText
        for i in 0..<questionButtons.count{
            questionButtons[i].setTitle(question.options[i], for: .normal)
            questionButtons[i].tag = i
        }
    }
    
    // MARK: Actions
    
    @IBAction func questionButtonPressed(_ sender: UIButton) {
        var text = ""
        let question = DataModel.shared().question[currentQuestion]
        if sender.tag == question.rightOption{
            text = "Você Acertou"
        }else{
            text = "Errrou"
        }
        let alert = UIAlertController(title: "Quiz", message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { _ in
            self.currentQuestion += 1
            if self.currentQuestion >= DataModel.shared().question.count{
                self.dismiss(animated: true)
            }else{
                self.updateQuestionView(question:
                    DataModel.shared().question[self.currentQuestion]
                )
            }
        }))
        self.present(alert, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    
}
