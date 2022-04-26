//
//  CarPlayPrePickListTwo.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 13/04/2022.
//

import Foundation
import CarPlay

func createCarPlayPrePickListTwo(cpInterface: CPInterfaceController, driverName: String) -> CPTemplate {
    
    var lines: [CPInformationItem] = []
    lines.append(CPInformationItem(title: "07:25", detail: "613 --> 511"))
    lines.append(CPInformationItem(title: "07:45", detail: "619 --> 117"))
    lines.append(CPInformationItem(title: "08:15", detail: "219 --> 404"))
    lines.append(CPInformationItem(title: "08:45", detail: "661 --> 515"))
 
    
    var actions: [CPTextButton] = []
    
    actions.append(CPTextButton(title: "DONE", textStyle: .confirm, handler: { _ in
        cpInterface.popTemplate(animated: false)
    }))
    let template = CPInformationTemplate(title: driverName, layout: .twoColumn, items: lines, actions:actions)
    
    return template
}
    
    
    

