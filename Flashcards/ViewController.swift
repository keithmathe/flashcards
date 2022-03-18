//
//  ViewController.swift
//  Flashcards
//
//  Created by Keith Mathe on 2/26/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet var screen: UIView!
    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var card: UIView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationController = segue.destination as! UINavigationController
        let creationController = navigationController.topViewController as! CreationViewController
        creationController.flashcardsViewController = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        card.layer.cornerRadius = 20.0
        card.layer.shadowRadius = 15.0
        card.layer.shadowOpacity = 0.2
        card.clipsToBounds = true
    }


    @IBAction func didTapFlashcard(_ sender: Any) {
        frontLabel.isHidden =  !frontLabel.isHidden
    }
    
    func updateFlashcard(question : String, ans : String) {
        backLabel.text = ans
        frontLabel.text = question
    }
}

