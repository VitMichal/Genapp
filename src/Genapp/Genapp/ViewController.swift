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
        let convertor = DomainToTemplateInputConverterImpl()
        let generator = ControllerGenerator(domainToTemplateInputConverter: convertor)
        let controller = ControllerGeneratingControllerImpl(controllerGenerator: generator)

        let input = ObjectDefinition(
            name: "LalaContoller",
            methods: ["get() -> Bool", "set() -> String"],
            dependecies: ["LalaFacade", "TutuController"]
        )

        let output = controller.generate(data: input)
        print(output)

        NSApplication.shared().terminate(self)
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

