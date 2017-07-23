//
//  {{filename}}
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Domain

public protocol {{name}}: BaseController {
{{# methods }}    func {{ value }}
{{/ methods}}}

public final class {{name}}Impl: BaseControllerImpl, {{name}} {
    {{# dependecies}}{{variable}}: {{type}}
    {{/ dependecies}}
    public init() {

    }
{{# methods }}
    public func {{ value }} {

    }
{{/ methods}}
}
