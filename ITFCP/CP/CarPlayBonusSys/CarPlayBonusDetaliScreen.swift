//
//  CarPlayBonusListScreen.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 11/04/2022.
//

import Foundation
import CarPlay

func createCarPlayBounsDetaliScreen(cpInterface: CPInterfaceController, driverName: String) -> CPTemplate {
    
    var lines: [CPInformationItem] = []
    lines.append(CPInformationItem(title: "poeng", detail: "60"))
    lines.append(CPInformationItem(title: "min", detail: "15"))
    
 
    var actions: [CPTextButton] = []
    
    actions.append(CPTextButton(title: "DONE", textStyle: .confirm, handler: { _ in
        cpInterface.popTemplate(animated: false)
    }))
    let template = CPInformationTemplate(title: driverName, layout: .twoColumn, items: lines, actions:actions)
    
    return template
}


