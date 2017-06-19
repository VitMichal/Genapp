//
//  ViewController.swift
//  Genapp
//
//  Created by Vít Míchal on 17.06.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

import Cocoa
import Mustache

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let generator = ControllerGenerator()
        let controller = ControllerGeneratingControllerImpl(controllerGenerator: generator)
        let input = TemplateInput(name: "LalaContoller", dependecies: nil)
        let output = controller.generate(data: input)
        print (output)
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

