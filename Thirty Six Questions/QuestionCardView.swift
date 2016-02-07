//
//  QuestionCardView.swift
//  Thirty Six Questions
//
//  Created by Angela Cartagena on 7/02/2016.
//  Copyright © 2016 Angela Cartagena. All rights reserved.
//

import UIKit
import PureLayout
import ChameleonFramework

class QuestionCardView: UIView {
    
    var card: Card?
    let label = UILabel()
    
    init(card: Card) {
        self.card = card
        super.init(frame: CGRect.zero)
        
        self.addSubview(label)
        
        label.text = card.cardString
        if let custom = UIFont.randomFont() {
            label.font = custom
        }else {
           label.font = UIFont.systemFontOfSize(36)
        }
        
        if label.text!.characters.count > 120 {
            label.font = UIFont(name: label.font.fontName, size: 30)
        }
        
        print("text: \(label.text) font: \(label.font)")
        
        label.textColor = UIColor.whiteColor()
        label.numberOfLines = 0
        label.textAlignment = .Center
        
        
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        self.backgroundColor = RandomFlatColorWithShade(.Light)
        label.autoPinEdgeToSuperviewEdge(.Leading, withInset: 20)
        label.autoPinEdgeToSuperviewEdge(.Trailing, withInset: 20)
        label.autoAlignAxisToSuperviewAxis(.Horizontal)
        label.autoPinEdgeToSuperviewEdge(.Top, withInset: 10, relation: .GreaterThanOrEqual)
        label.autoPinEdgeToSuperviewEdge(.Bottom, withInset: 10, relation: .GreaterThanOrEqual)
        
        self.layer.cornerRadius = 20
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
}
