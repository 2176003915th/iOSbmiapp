//
//  ViewController.swift
//  A2020120071
//
//  Created by Cs Induk- on 2023/12/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtW: UITextField!
    @IBOutlet weak var txtH: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBAction func btnCal(_ sender: UIButton) {
        if txtW.text == "" || txtH.text == "" {
            lblResult.textColor = .red
            print("Input error")
            lblResult.text = "키와 체중을 입력하세요!"
            return
        } else {
            let weight = Double(txtW.text!)!
            let height = Double(txtH.text!)!
            let bmi = weight / (height*height*0.0001) // kg/m*m
            let shortenedBmi = String(format: "%.1f", bmi)
            var body = ""
            var color = UIColor.white
            if bmi >= 40 {
                color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
            body = "3단계 비만"
            } else if bmi >= 30 && bmi < 40 {
                color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
            body = "2단계 비만"
            } else if bmi >= 25 && bmi < 30 {
                color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
            body = "1단계 비만"
            } else if bmi >= 18.5 && bmi < 25 {
                color = UIColor(displayP3Red: 0.0, green: 0.0, blue: 1.0, alpha: 1.0)
            body = "정상"
            } else {
                color = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
            body = "저체중"
            }
            print("BMI:\(shortenedBmi), 판정:\(body)")
            lblResult.textColor = .white
            lblResult.backgroundColor = color
            lblResult.clipsToBounds = true
            lblResult.layer.cornerRadius = 20
            lblResult.text = "BMI:\(shortenedBmi), 판정:\(body)"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

