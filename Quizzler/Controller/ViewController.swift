//
//  ViewController.swift
//  Quizzler
//
//  Created by Giovanna Mendes de Sousa Rodrigues on 09/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let rightAnswer = quizBrain.checkAnswer(userAnswer)
        
        if rightAnswer{
            sender.backgroundColor = UIColor.systemGreen
        }
        else{sender.backgroundColor = UIColor.systemRed}
        
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateQuestion), userInfo: nil, repeats: false)
    }
    
    @objc func updateQuestion(){
        scoreLabel.text = quizBrain.getScoreText()
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        
    }
}

