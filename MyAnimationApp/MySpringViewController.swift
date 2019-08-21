//
//  MySpringViewController.swift
//  MyAnimationApp
//
//  Created by Vasilii on 21/08/2019.
//  Copyright © 2019 Vasilii Burenkov. All rights reserved.
//

import Spring

class MySpringViewController: UIViewController {
    
    
    @IBOutlet weak var mySpringView: SpringView!
    @IBOutlet weak var myspringButton: SpringButton!
    @IBOutlet weak var mySpringLabel: UILabel!
    
    private var nextAnimation = 0
    private var indexAnimation = 0
    private var indexNextAnimation = 1
    private var timeInteval: CGFloat = 3
    
    var animations = ["shake",
                      "pop",
                      "morph",
                      "end"
                      ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mySpringView.layer.cornerRadius = 15
        myspringButton.layer.cornerRadius = 15

    }
    

    @IBAction func mySpingButton(_ sender: SpringButton) {
       
        switch nextAnimation {
        case 0:
            mySpringView.animation = animations[indexAnimation]
            mySpringLabel.text = mySpringView.animation
            myspringButton.setTitle(animations[indexNextAnimation], for: .normal)
            mySpringView.force = timeInteval
            mySpringView.duration = timeInteval
            mySpringView.rotate = timeInteval
            mySpringView.animate()
            nextAnimation += 1
            indexAnimation += 1
            indexNextAnimation += 1
        case 1:
            mySpringView.animation = animations[indexAnimation]
            mySpringLabel.text = mySpringView.animation
            myspringButton.setTitle(animations[indexNextAnimation], for: .normal)
            mySpringView.force = timeInteval
            mySpringView.duration = timeInteval
            mySpringView.rotate = timeInteval
            mySpringView.animate()
            nextAnimation += 1
            indexAnimation += 1
            indexNextAnimation += 1
        case 2:
            mySpringView.animation = animations[indexAnimation]
            mySpringLabel.text = mySpringView.animation
            myspringButton.setTitle(animations[indexNextAnimation], for: .normal)
            mySpringView.force = timeInteval
            mySpringView.duration = timeInteval
            mySpringView.rotate = timeInteval
            mySpringView.animate()
            indexAnimation += 1
            nextAnimation += 1
            indexNextAnimation += 1

        default:
            break
        }
    }
    
}
