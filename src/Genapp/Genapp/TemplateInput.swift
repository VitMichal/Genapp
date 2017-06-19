//
//  TemplateInput.swift
//  Genapp
//
//  Created by Vít Míchal on 17.06.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

public typealias Dependecies = [String]

public struct TemplateInput {
    public let name: String
    public let dependecies: Dependecies?
    
    public init(name: String, dependecies: Dependecies?) {
        self.name = name
        self.dependecies = dependecies
    }
}
