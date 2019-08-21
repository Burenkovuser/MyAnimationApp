//
//  Extension + UIButton.swift
//  MyAnimationApp
//
//  Created by Vasilii on 20/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import UIKit

extension UIButton {
    
    func pulsate() {
        let puls = CASpringAnimation(keyPath:"transform.scale")
        
        puls.duration = 0.6 //продолжительность
        puls.fromValue = 0.95 //первоначальное значение
        puls.toValue = 1 // новое значение
        puls.autoreverses = true // возврат назад
        puls.initialVelocity = 0.5  // первоначальне ускорение
        puls.damping = 1 // затухание
        
        layer.add(puls, forKey: nil)
    }
}
