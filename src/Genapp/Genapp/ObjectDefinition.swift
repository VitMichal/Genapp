//
//  TemplateInput.swift
//  Genapp
//
//  Created by Vít Míchal on 17.06.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

public typealias Dependecies = [String]
public typealias Method = [String]

public struct ObjectDefinition {
    public let name: String
    public let methods: Method?
    public let dependecies: Dependecies?

    public init(name: String, methods: Method?, dependecies: Dependecies?) {
        self.name = name
        self.dependecies = dependecies
        self.methods = methods
    }
}
