//
//  CarPlayOverView.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 13/04/2022.
//

import Foundation
import CarPlay

func createCarPlayOverView(cpInterface: CPInterfaceController, driverName: String) -> CPTemplate {
    
    var lines: [CPInformationItem] = []
    lines.append(CPInformationItem(title: "401", detail: "LEDIG = 4, SNL = 15,OPPTATT = 0,PAUSE 8"))
    lines.append(CPInformationItem(title: "402", detail: "LEDIG 6, SNL 20, OPPTATT 3, PAUSE 41"))
    lines.append(CPInformationItem(title: "403", detail: "LEDIG 7, SNL 12, OPPTATT 0, PAUSE 11"))
    lines.append(CPInformationItem(title: "405", detail: "LEDIG 1, SNL 5, OPPTATT 0, PAUSE 25"))
    lines.append(CPInformationItem(title: "406", detail: "LEDIG 10, SNL 3, OPPTATT 10, PAUSE 48"))
    lines.append(CPInformationItem(title: "501", detail: "LEDIG 11, SNL 0, OPPTATT 1, PAUSE 5"))
    lines.append(CPInformationItem(title: "502", detail: "LEDIG 45, SNL 15, OPPTATT 99, PAUSE 0"))
    lines.append(CPInformationItem(title: "503", detail: "LEDIG 5, SNL 25, OPPTATT 15, PAUSE 11"))
   
    
    
    var actions: [CPTextButton] = []
    
    actions.append(CPTextButton(title: "Done", textStyle: .confirm, handler: { _ in
        cpInterface.popTemplate(animated: true)
    }))
    let template = CPInformationTemplate(title: driverName, layout: .twoColumn, items: lines, actions:actions)
    
    return template
}
