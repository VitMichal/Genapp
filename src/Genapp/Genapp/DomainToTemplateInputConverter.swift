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
        let dependecies = makeDependeciesArray(values: objectDefinition.dependecies)

        return TemplateInputFactory.create(
            name: objectDefinition.name,
            methods: methods,
            dependecies: dependecies
        )
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
    
    private func makeDependeciesArray(values: [String]?) -> [TemplateValue] {
        var namedArray = [TemplateValue]()
        if let values = values {
            for value in values {
                let variable = makeFirstLetterLowerCase(string: value)
                namedArray.append(TemplateInputFactory.createDependencyValue(variable: variable, type: value))
            }
        }
        return namedArray
    }
    
    private func makeFirstLetterLowerCase(string: String) -> String {
        let range = string.startIndex..<string.startIndex
        let lowerFirstLetter = String(string[string.startIndex]).lowercased()
        return string.replacingCharacters(in: range, with: lowerFirstLetter)
    }
}
