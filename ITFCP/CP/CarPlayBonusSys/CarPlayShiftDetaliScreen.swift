//
//  CarPlayShiftDetaliScreen.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 12/04/2022.
//

import Foundation
import CarPlay

func createCarPlayShiftDetaliScreen(cpInterface: CPInterfaceController, driverName: String) -> CPTemplate {
    
    var lines: [CPInformationItem] = []
    lines.append(CPInformationItem(title: "pr.time", detail: "344"))
    lines.append(CPInformationItem(title: "totalt", detail: "1.937"))
 
    
    var actions: [CPTextButton] = []
    
    actions.append(CPTextButton(title: "DONE", textStyle: .confirm, handler: { _ in
        cpInterface.popTemplate(animated: false)
    }))
    let template = CPInformationTemplate(title: driverName, layout: .twoColumn, items: lines, actions:actions)
    
    return template
}
