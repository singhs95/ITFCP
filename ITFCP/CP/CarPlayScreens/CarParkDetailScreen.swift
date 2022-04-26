//
//  File.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 16/02/2022.
//


import Foundation
import CarPlay

func createCarParkDetailScreen(cpInterface: CPInterfaceController, driverName: String) -> CPTemplate {
    
    var lines: [CPInformationItem] = []
    lines.append(CPInformationItem(title: "Turer plukk 15 min", detail: "2"))
    lines.append(CPInformationItem(title: "Turer plukk 30 min", detail: "3"))
    lines.append(CPInformationItem(title: "Turer plukk 45 min", detail: "5"))
    lines.append(CPInformationItem(title: "Bilstatus", detail: "Ledig 1"))
    lines.append(CPInformationItem(title: "Bilstatus", detail: "SNL 1"))
   // lines.append(CPInformationItem(title: "Bilstatus", detail: "Opptatt 3"))
   // lines.append(CPInformationItem(title: "Bilstatus", detail: "Pause 1"))
    
    

    
    
    
    var actions: [CPTextButton] = []
    
    actions.append(CPTextButton(title: "Done", textStyle: .confirm, handler: { _ in
        cpInterface.popTemplate(animated: true)
    }))
    let template = CPInformationTemplate(title: driverName, layout: .twoColumn, items: lines, actions:actions)
    
    return template
}
