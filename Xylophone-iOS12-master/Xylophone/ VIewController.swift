//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    var player: AVAudioPlayer?
    let sounds = ["note1","note2","note3","note4","note5","note6","note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func notePressed(_ sender: UIButton) {
        playSound(soundFileIndex: sender.tag - 1)
    }
    
    func playSound(soundFileIndex : Int){
        let url = Bundle.main.url(forResource: sounds[soundFileIndex], withExtension: "wav")!
        
        do{
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else {return}
            
            player.prepareToPlay()
            player.play()
        }catch let error{
            print(error.localizedDescription)
        }
    }
    
    
    
}
