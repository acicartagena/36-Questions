//
//  ViewController.swift
//  Thirty Six Questions
//
//  Created by Angela Cartagena on 7/02/2016.
//  Copyright © 2016 Angela Cartagena. All rights reserved.
//

import UIKit
import Koloda

class ViewController: UIViewController {
    
    var cardStack = Card.getCardStack()

    @IBOutlet weak var cardStackView: KolodaView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cardStackView.delegate = self
        cardStackView.dataSource = self
        cardStackView.layer.cornerRadius = 20
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: KolodaViewDelegate {
    
}

extension ViewController: KolodaViewDataSource {

    func koloda(kolodaNumberOfCards koloda:KolodaView) -> UInt {
        return UInt(cardCount)
    }
    
    func koloda(koloda: KolodaView, viewForCardAtIndex index: UInt) -> UIView {
        let card = cardStack[Int(index)]
        return QuestionCardView(card: card)
    }
    
//    func koloda(koloda: KolodaView, viewForCardOverlayAtIndex index: UInt) -> OverlayView? {
//        return NSBundle.mainBundle().loadNibNamed("OverlayView",
//            owner: self, options: nil)[0] as? OverlayView
//    }

}

