//
//  ColorDetailViewController.swift
//  Colors
//
//  Created by 唐琪盛 on 7/12/18.
//  Copyright © 2018 Qisheng Tang. All rights reserved.
//

import UIKit

class ColorDetailViewController: UIViewController {

    var color : Color?
    
    @IBOutlet weak var colorNameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        colorNameLabel.text=color?.name
        self.view.backgroundColor = color?.uiColor
        
        self.title = color?.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
