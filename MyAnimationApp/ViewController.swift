//
//  ViewController.swift
//  MyAnimationApp
//
//  Created by Vasilii on 20/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var coreAnimationView: UIView!
    @IBOutlet weak var coreAnimationButton: UIButton!
    @IBOutlet weak var springAnimatiionView: SpringView!
    @IBOutlet weak var springButton: SpringButton!
    
    
    
    private var originalCoordinate: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        originalCoordinate = coreAnimationView.frame.origin.x // реальное расположение view
        springAnimatiionView.animate()// будет запущена анимация при старте
        springButton.animate()
    }

    @IBAction func starCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: [.autoreverse, .repeat],
                       animations: {
                        //если начальное значение, сдвигаем на 40, если нет возващаем начальное значение
                        if self.coreAnimationView.frame.origin.x == self.originalCoordinate {
                            self.coreAnimationView.frame.origin.x -= 40
                        } else {
                            self.coreAnimationView.frame.origin.x += 40
                        }
        })
    }
    
    @IBAction func runSpringButton(_ sender: SpringButton) {
        springAnimatiionView.animation = "wobble"
        springAnimatiionView.curve = "easeIn"
        springAnimatiionView.force = 2
        springAnimatiionView.duration = 1
        springAnimatiionView.delay = 0.3
        springAnimatiionView.animate()
        
        springButton.animation = "morph"
        springButton.curve = "easeOut"
        springButton.animate()
    }
}

