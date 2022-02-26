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
}

