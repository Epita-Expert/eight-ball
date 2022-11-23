//
//  ViewController.swift
//  eight-ball
//
//  Created by Nathan Podesta on 22/11/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var typeView: UIView!
    
    
    let possibleAnswers : [Answer] =  [
        Answer(type: AnswerType.affirmative, message: "It is certain."),
        Answer(type: AnswerType.affirmative, message: "It is decidedly so."),
        Answer(type: AnswerType.affirmative, message: "Without a doubt."),
        Answer(type: AnswerType.affirmative, message: "Yes definitely."),
        Answer(type: AnswerType.affirmative, message: "You may rely on it."),
        Answer(type: AnswerType.affirmative, message: "As I see it, yes."),
        Answer(type: AnswerType.affirmative, message: "Most likely."),
        Answer(type: AnswerType.affirmative, message: "Outlook good."),
        Answer(type: AnswerType.affirmative, message: "Yes."),
        Answer(type: AnswerType.affirmative, message: "Signs point to yes."),
        Answer(type: AnswerType.affirmative, message: "Most likely."),
        Answer(type: AnswerType.affirmative, message: "Outlook good."),
        Answer(type: AnswerType.affirmative, message: "Yes."),
        Answer(type: AnswerType.affirmative, message: "Signs point to yes."),
        
        Answer(type: AnswerType.unsure, message: "Reply hazy, try again."),
        Answer(type: AnswerType.unsure, message: "Ask again later."),
        Answer(type: AnswerType.unsure, message: "Better not tell you now."),
        Answer(type: AnswerType.unsure, message: "Cannot predict now."),
        Answer(type: AnswerType.unsure, message: "Concentrate and ask again."),
        
        Answer(type: AnswerType.negative, message: "Don't count on it."),
        Answer(type: AnswerType.negative, message: "My reply is no."),
        Answer(type: AnswerType.negative, message: "My sources say no."),
        Answer(type: AnswerType.negative, message: "Outlook not so good."),
        Answer(type: AnswerType.negative, message: "Very doubtful.")
    ]
    
    override func viewDidLoad()  {
        super.viewDidLoad()
    }
    
    func setTypeViewColor(type: AnswerType) {
        switch type {
        case AnswerType.negative:
            typeView.backgroundColor = UIColor.red
        case AnswerType.unsure:
            typeView.backgroundColor = UIColor.orange
        case AnswerType.affirmative:
            typeView.backgroundColor = UIColor.green
        }
//        green for affirmative
//        • orange for unsure
//        • red for negative
    }

    @IBAction func checkButtonClicked(_ sender: UIButton) {
        let answer: Answer = possibleAnswers[Int.random(in: 0...possibleAnswers.count - 1)]
        answerLabel.text = answer.message
        setTypeViewColor(type: answer.type)
    }
}

