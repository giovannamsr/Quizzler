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
    @IBOutlet weak var firstOptionButton: UIButton!
    @IBOutlet weak var secondOptionButton: UIButton!
    @IBOutlet weak var thirdOptionButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBAction func firstOptionPressed(_ sender: UIButton) {
    }
    @IBAction func secondOptionPressed(_ sender: UIButton) {
    }
    @IBAction func thirdOptionPressed(_ sender: UIButton) {
    }
    
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
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        questionLabel.text = quizBrain.getQuestionText()
        let answerOptions = quizBrain.getOptions()
        
        
        firstOptionButton.setTitle(answerOptions[0], for: .normal)
        secondOptionButton.setTitle(answerOptions[1], for: .normal)
        thirdOptionButton.setTitle(answerOptions[2], for: .normal)
        
        firstOptionButton.backgroundColor = UIColor.clear
        secondOptionButton.backgroundColor = UIColor.clear
        thirdOptionButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProgress()
        
    }
}

