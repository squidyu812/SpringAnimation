//
//  Springable.swift
//  SpringAnimation
//
//  Created by Squid Yu on 20/10/2017.
//  Copyright © 2017 SquidYu. All rights reserved.
//

import UIKit

protocol Springable {
    func beginSpringAnimation()
}

extension Springable where Self: UIView {
    func beginSpringAnimation() {
        transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
        UIView.animate(
            withDuration: 2.0,
            delay: 0,
            usingSpringWithDamping: 0.2,
            initialSpringVelocity: 6,
            options: .allowUserInteraction,
            animations: { [weak self] in
                self?.transform = .identity
            },
            completion: nil)
    }
}
