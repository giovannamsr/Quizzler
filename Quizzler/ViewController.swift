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
    
    let quiz = [["4 + 3 = 5","False"],["4 + 2 = 6","True"],["70 - 8 = 62","True"]]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }

    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer =  quiz[questionNumber][1]
        if(userAnswer == actualAnswer){
            print("Correct!")
        }
        else{print("Wrong!")}
        let numberOfQuestions = quiz.count - 1
        if(questionNumber < numberOfQuestions)
        {
            questionNumber += 1
        }
        else{questionNumber = 0}
        updateQuestion()
    }
    
    func updateQuestion(){
        questionLabel.text = quiz[questionNumber][0]
    }
}

