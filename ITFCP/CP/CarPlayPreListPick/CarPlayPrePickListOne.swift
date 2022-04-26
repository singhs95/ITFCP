//
//  CarPlayPrePickListOne.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 13/04/2022.
//

import Foundation
import CarPlay


func createCarPlayPrePickListOne(cpInterface: CPInterfaceController, driverName: String) -> CPTemplate {
    
    var lines: [CPInformationItem] = []
    lines.append(CPInformationItem(title: "07:10", detail: "176 --> 219"))
    lines.append(CPInformationItem(title: "07:20", detail: "219 --> 305"))
 
    
    var actions: [CPTextButton] = []
    
    actions.append(CPTextButton(title: "DONE", textStyle: .confirm, handler: { _ in
        cpInterface.popTemplate(animated: false)
    }))
    let template = CPInformationTemplate(title: driverName, layout: .twoColumn, items: lines, actions:actions)
    
    return template
}
    




