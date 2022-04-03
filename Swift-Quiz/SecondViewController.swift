//
//  SecondViewController.swift
//  Swift-Quiz
//
//  Created by Lucas Leal on 31/03/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    public var information = ""
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var buttonIniciar: UIButton!
    
    var questions:[String] = ["Pergunta 1", "Pergunta 2", "Pergunta3"]
    var counter:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = information
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonA(_ sender: Any) {
    }
    
    @IBAction func buttonB(_ sender: Any) {
    }
    
    @IBAction func buttonC(_ sender: Any) {
    }
    
    @IBAction func buttonD(_ sender: Any) {
    }
    
    @IBAction func buttonIniciarPressed(_ sender: Any) {
        print("buttonPressed")
        buttonIniciar.setTitle("Próximo", for: .normal)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
