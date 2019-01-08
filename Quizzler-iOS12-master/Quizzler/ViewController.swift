//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    let maxQuestions : Int = 13
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
        updateUI()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if(sender.tag == 1){
            pickedAnswer = true
        }
        else{
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber += 1
        nextQuestion()
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: " + String(score)
        progressLabel.text = String(questionNumber+1) + "/13"
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
    }
    

    func nextQuestion() {
        if(questionNumber < 13){
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }
        else{
        
            let alert = UIAlertController(title: "Awsome", message: "You've finished all the question, do you want to start over?", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Restart",
                                          style: UIAlertActionStyle.default,
                                          handler: {(alert: UIAlertAction!) in self.startOver()}))
            present(alert,animated: true,completion: nil)
        }
    }
    
    
    func checkAnswer(){
        if(questionNumber < 13){
            let correctAnswer = allQuestions.list[questionNumber].answer
            if(correctAnswer == pickedAnswer){
                score += 1
                ProgressHUD.showSuccess("Correct")
            }
            else{
                ProgressHUD.showError("Wrong")
            }
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    

    
}
