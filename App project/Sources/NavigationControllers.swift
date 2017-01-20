//
//  NavigationControllers.swift
//  PilotPlant
//
//  Created by Lingostar on 2016. 12. 15..
//
//

import Foundation
import UIKit

extension Array {
    subscript (safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}

public class HalfSizePresentationController : UIPresentationController {
    
    public override var frameOfPresentedViewInContainerView: CGRect {
        return CGRect(x: 0, y: containerView!.bounds.height-500, width: containerView!.bounds.width, height: 500)
    }
}


open class Link: UIStoryboardSegue {
    override open func perform() {
        print("Linked")
    }
}
