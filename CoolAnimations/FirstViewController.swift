//
//  FirstViewController.swift
//  CoolAnimations
//
//  Created by Barış Genç on 25.11.2020.
//  Copyright © 2020 BG. All rights reserved.
//

import UIKit
import ViewAnimator

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemPink
        
        myView.animate(animations: [AnimationType.rotate(angle: .pi/5)], delay: 1, duration: 2)
    }
}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        myView.center = view.center
        view.addSubview(myView)
        myView.backgroundColor = .systemPink
        myView.animate(animations: [AnimationType.zoom(scale: 4)], delay: 1, duration: 2)
    }
}
