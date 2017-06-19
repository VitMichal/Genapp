//
//  ControllerGeneratingController.swift
//  Genapp
//
//  Created by Vít Míchal on 18.06.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

public protocol ControllerGeneratingController: BaseGeneratingController {

}

public class ControllerGeneratingControllerImpl: BaseGeneratingControllerImpl {
    let controllerGenerator: ControllerGenerator
    public init(controllerGenerator: ControllerGenerator) {
        self.controllerGenerator = controllerGenerator
    }
    
    func generate(data: TemplateInput) -> TemplateOutput {
       return controllerGenerator.generate(data: data)
    }
    
    func getOutput() -> TemplateOutput {
        return self.output
    }
}
