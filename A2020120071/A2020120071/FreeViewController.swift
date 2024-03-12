//
//  FreeViewController.swift
//  A2020120071
//
//  Created by Cs Induk- on 2023/12/05.
//

import UIKit
import AVKit
import WebKit

class FreeViewController: UIViewController {

    
    @IBAction func CWeb(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            let myURL = URL(string:"https://m.google.com")
            let myRequest = URLRequest(url: myURL!)
            WebView.load(myRequest)
            } else {
                let myURL = URL(string:"https://m.youtube.com")
                let myRequest = URLRequest(url: myURL!)
                WebView.load(myRequest)
            }
    }
    
    @IBOutlet weak var WebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let myURL = URL(string:"https://m.google.com/")
        let myRequest = URLRequest(url: myURL!)
        WebView.load(myRequest)
        // Do any additional setup after loading the view.
    }
    



}
