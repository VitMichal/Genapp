//
//  BaseGeneratingController.swift
//  Genapp
//
//  Created by Vít Míchal on 17.06.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

public protocol BaseGeneratingController {
    var output: TemplateOutput { get }

    func generate(data: ObjectDefinition) -> TemplateOutput
    func getOutput() -> TemplateOutput
}

public class BaseGeneratingControllerImpl {
    var output: TemplateOutput = ""
}
