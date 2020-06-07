//
//  ViewController.swift
//  test3
//
//  Created by 松島優希 on 2020/06/07.
//  Copyright © 2020 松島優希. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var listlist :[String] = ["A","B","C","D","E"]
    var number: Int = 0
    
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var preBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstButtonPushed() {
           number = 0
           count.text = "第\(number+1)問"
           titlelabel.text = listlist[number]
       }
       
       @IBAction func secondButtonPushed() {
           number = 1
        count.text = "第\(number+1)問"
           titlelabel.text = listlist[number]
       }
       
       @IBAction func thirdButtonPushed() {
           number = 2
           count.text = "第\(number+1)問"
           titlelabel.text = listlist[number]
       }
       
       @IBAction func preButton(){
           if number == 0{
               number = 4
           }else{
               number -= 1
           }
           count.text = "第\(number+1)問"
           titlelabel.text = listlist[number]
       }
       
       @IBAction func tappednextButton(){
           if number == 4{
               number = 0
           }else{
               number += 1
           }
           count.text = "第\(number+1)問"
           titlelabel.text = listlist[number]
       }

}

