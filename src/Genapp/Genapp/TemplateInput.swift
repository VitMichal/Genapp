//
//  TemplateInput.swift
//  Genapp
//
//  Created by Vít Míchal on 21.07.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

//public struct NamedField {
//    let value: String
//    public init(value: String) {
//        self.value = value
//    }
//}

public typealias TemplateValue = [String: String]
public typealias TemplateValues = [TemplateValue]?
public typealias TemplateInput = [String: Any]

public struct TemplateInputFactory {
    public let name: String
    public let methods: TemplateValues
    public let dependecies: TemplateValues

    static public func create(name: String, methods: TemplateValues, dependecies: TemplateValues) -> TemplateInput {
        return [
            "name": name,
            "methods": methods ?? [],
            "dependecies": dependecies ?? []
        ]
    }

    static public func createValue(value: String) -> TemplateValue {
        return [ "value": value ]

    }
    
    static public func createDependencyValue(variable: String, type: String) -> TemplateValue {
        return [ "variable": variable, "type": type ]
        
    }
}

