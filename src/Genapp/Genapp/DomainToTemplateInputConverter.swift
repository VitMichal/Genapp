//
//  DomainToTemplateInputConverter.swift
//  Genapp
//
//  Created by Vít Míchal on 21.07.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

public protocol DomainToTemplateInputConverter {
    func convert(objectDefinition: ObjectDefinition) -> TemplateInput
}

public class DomainToTemplateInputConverterImpl: DomainToTemplateInputConverter {
    public func convert(objectDefinition: ObjectDefinition) -> TemplateInput {
        let methods = makeNamedArray(values: objectDefinition.methods)
        let dependecies = makeNamedArray(values: objectDefinition.dependecies)

        return TemplateInputFactory.create(name: objectDefinition.name, methods: methods, dependecies: dependecies)
    }

    private func makeNamedArray(values: [String]?) -> [TemplateValue] {
        var namedArray = [TemplateValue]()
        if let values = values {
            for value in values {
                namedArray.append(TemplateInputFactory.createValue(value: value))
            }
        }
        return namedArray
    }
}
