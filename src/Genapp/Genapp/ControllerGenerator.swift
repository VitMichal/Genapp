//
//  ControllerGenerator.swift
//  Genapp
//
//  Created by Vít Míchal on 18.06.17.
//  Copyright © 2017 Vít Míchal. All rights reserved.
//

import Foundation


public class ControllerGenerator: BaseTemplateGeneratorImpl, BaseTemplateGenerator {
    
    public override init(domainToTemplateInputConverter: DomainToTemplateInputConverter) {
        super.init(domainToTemplateInputConverter: domainToTemplateInputConverter)
        //self.filename = "/Users/vita/Projekty/Genapp/templates/Application/Controller.swift"
        self.filename = "/Users/vitmichal/Genapp/templates/Application/Controller.swift"
    }
}
