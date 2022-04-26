//
//  CarPlayPrePickListTre.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 13/04/2022.
//

import Foundation
import CarPlay


func createCarPlayPrePickListTre(cpInterface: CPInterfaceController, driverName: String) -> CPTemplate {
    
    var lines: [CPInformationItem] = []
    lines.append(CPInformationItem(title: "17:30", detail: "119 --> 717"))
    lines.append(CPInformationItem(title: "18:15", detail: "919 --> 454"))
    lines.append(CPInformationItem(title: "19:45", detail: "861 --> 215"))
    
    var actions: [CPTextButton] = []
    
    actions.append(CPTextButton(title: "DONE", textStyle: .confirm, handler: { _ in
        cpInterface.popTemplate(animated: false)
    }))
    let template = CPInformationTemplate(title: driverName, layout: .twoColumn, items: lines, actions:actions)
    
    return template
}
    
    
    
    

