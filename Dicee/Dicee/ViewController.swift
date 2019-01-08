//
//  ViewController.swift
//  Dicee
//
//  Created by Tal Hakmon on 1/3/19.
//  Copyright © 2019 Tal Hakmon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    var count : Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        popUpMassage("Wllcome","Wellcome to my app")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func popUpMassage(_ title:String,_ body:String){
        let alert = UIAlertController(title: title, message: body, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int.random(in:0 ... 5)
        randomDiceIndex2 = Int.random(in:0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    
}

