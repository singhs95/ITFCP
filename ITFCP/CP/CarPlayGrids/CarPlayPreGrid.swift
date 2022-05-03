//
//  CarPlayPreGrid.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 12/04/2022.
//

import Foundation
import CarPlay


func createCarPlayPreGrid(cpInterface: CPInterfaceController) -> CPTemplate {
    
    
    let templateFifteenMinuttes = createCarPlayPrePickListOne(cpInterface: cpInterface, driverName: "15Min")
    let templateHalvHoure = createCarPlayPrePickListTwo(cpInterface: cpInterface, driverName: "30 min")
    let templateFourtiMin = createCarPlayPrePickListTre(cpInterface: cpInterface, driverName: "45 min")
    


    
    
    let image = #imageLiteral(resourceName: "clock")
    
    let buttonOne: CPGridButton = CPGridButton(titleVariants: ["15 MIN"], image: image, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(templateFifteenMinuttes, animated: false, completion: nil)
        }
    })
    let buttonTwo: CPGridButton = CPGridButton(titleVariants: ["30 MIN"], image: image, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(templateHalvHoure, animated: false, completion: nil)
        }
    })
    let buttonTree: CPGridButton = CPGridButton(titleVariants: ["45 MIN"], image: image, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(templateFourtiMin, animated: false, completion: nil)
        }
    })
    
    let template = CPGridTemplate(title: "Forhåndslister", gridButtons: [buttonOne, buttonTwo, buttonTree])
  
    return template
    
}
    

