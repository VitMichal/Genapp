//
//  BaseTemplateGenerator.swift
//  Genapp
//
//  Created by Vít Míchal on 18.06.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

import Mustache

enum TemplateGenerator: Error {
    case TemplateNotFound
}

public protocol BaseTemplateGenerator {
    var filename: String { get set }
    func generate(data: ObjectDefinition) -> TemplateOutput

}

public class BaseTemplateGeneratorImpl {
    public var filename: String = ""
    public var domainToTemplateInputConverter: DomainToTemplateInputConverter
    public init(domainToTemplateInputConverter: DomainToTemplateInputConverter) {
        Mustache.DefaultConfiguration.contentType = .text
        self.domainToTemplateInputConverter = domainToTemplateInputConverter
    }

    public func generate(data: ObjectDefinition) -> TemplateOutput {
        let templateInput = domainToTemplateInputConverter.convert(objectDefinition: data)
        do {
            let template = try Template(path: filename)
            let output = try template.render(templateInput)
            return output
        } catch (let error) {
            return "\(error)"
        }
    }
}
