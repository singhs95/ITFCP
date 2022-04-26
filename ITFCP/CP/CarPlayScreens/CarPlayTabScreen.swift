//
//  CarPlayTabScreen.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 16/02/2022.
//

import Foundation
import CarPlay


func createCarPlayTabScreen(cpInterface: CPInterfaceController) -> CPTemplate {
    
let template = CPTabBarTemplate(templates: [createCarPlayPOISCreen(cpInterface: cpInterface), createCarPlayListScreen2(cpInterface: cpInterface)])
    
 return template
    
}




