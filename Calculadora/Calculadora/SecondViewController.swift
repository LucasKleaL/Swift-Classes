//
//  SecondViewController.swift
//  Calculadora
//
//  Created by ALUNO on 30/03/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var goBackButton: UIButton!
    @IBOutlet weak var myImageView: UIImageView!
    public var information = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        goBackButton.titleLabel?.text = information

    }
    
    @IBAction func goBackPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    var imageSelected = 0
    @IBAction func changeImagePressed(_ sender: Any) {
        if imageSelected == 0{
            imageSelected = 1
            myImageView.image = UIImage(named: "patrick")
        }else{
            imageSelected = 0
            myImageView.image = UIImage(named: "bob")
        }
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
