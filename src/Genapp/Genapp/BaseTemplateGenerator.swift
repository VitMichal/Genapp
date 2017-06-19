//
//  BaseTemplateGenerator.swift
//  Genapp
//
//  Created by Vít Míchal on 18.06.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

import Mustache

public protocol BaseTemplateGenerator {
    var filename: String { get set }
    func generate(data: TemplateInput) -> TemplateOutput

}

public class BaseTemplateGeneratorImpl {
    public var filename: String = ""
    public func generate(data: TemplateInput) -> TemplateOutput {
        do {
            let template = try Template(path: filename)
            let output = try template.render(data)
            return output
        } catch {
            return ""
        }
    }
}
