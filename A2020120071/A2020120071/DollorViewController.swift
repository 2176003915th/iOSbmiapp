//
//  DollorViewController.swift
//  A2020120071
//
//  Created by Cs Induk- on 2023/12/05.
//

import UIKit

class DollorViewController: UIViewController {

    
    @IBOutlet weak var txtWon: UITextField!
    
    @IBOutlet weak var txtDollor: UITextField!
    
    @IBOutlet weak var lblWon: UILabel!
    
    @IBOutlet weak var lblDollor: UILabel!
    
    @IBAction func btnCW(_ sender: UIButton) {
        if txtDollor.text == ""{
            lblWon.textColor = .red
            print("Input error")
            lblWon.text = "달러를 입력하세요!"
            return
        } else {
            let Dollor = Double(txtDollor.text!)!
            var Cwon = Dollor * 1311.90000
            lblWon.text = "\(Cwon)원"
            lblWon.textColor = .black
        }
    }
    
    @IBAction func btnCD(_ sender: UIButton) {
        if txtWon.text == ""{
            lblDollor.textColor = .red
            print("Input error")
            lblDollor.text = "원을 입력하세요!"
            return
        } else {
            let won = Double(txtWon.text!)!
            var Cdollor = won * 0.00076
            lblDollor.text = "\(Cdollor)USD"
            lblDollor.textColor = .black
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
