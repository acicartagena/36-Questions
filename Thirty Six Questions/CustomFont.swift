//
//  CustomFont.swift
//  Thirty Six Questions
//
//  Created by Angela Cartagena on 7/02/2016.
//  Copyright © 2016 Angela Cartagena. All rights reserved.
//

import UIKit

let fonts = [ "Alittlesunshine",
                "appleberry",
                "AtlanticCruise",
                "BigNoodleTitling",
                "BrainFlower",
                "ClaphappyLight",
                "DKLemonYellowSun",
                "FISHfingers",
                "homework",
                "natwooddraws-Regular",
                "orangejuice",
                "RoundedElegance-Regular",
                "ThrowMyHandsUpintheAir-Bold",
                "TrashHand",
                "TravelingTypewriter",
                "WalkwayBlack",
                "WalterGoesToAmerica",
                "YouAreJustMyType",
                "ComixLoud",
                "LeGrimoireduBonheur",
                "SteelfishOutline-Regular",
                "WildShow"]

extension UIFont {

    class func randomFont() -> UIFont? {
        let random = Int(arc4random_uniform(UInt32(fonts.count)))
        let fontName = fonts[random]
        
        var fontSize: CGFloat = 36.0
        
        switch (fontName) {
            case "WalterGoesToAmerica": fontSize = 52.0
            case "TravelingTypewriter": fallthrough
            case "ThrowMyHandsUpintheAir-Bold": fallthrough
            case "RoundedElegance-Regular": fallthrough
            case "WalkwayBlack":  fontSize = 32.0
            default: break
        }
        
        let font = UIFont(name: fontName, size: fontSize)
        if font == nil {
            print("font name: \(fontName)")
        }
        
        return font
    }
    
}
