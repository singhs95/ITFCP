//
//  CarPlayListsGridView.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 27/04/2022.
//

import Foundation
import CarPlay



func createCarPlayListGridView(cpInterface: CPInterfaceController) -> CPTemplate {
    
    
    let templatePickUpList = createCarPlayPOISCreen(cpInterface: cpInterface)
    let templatePreList = createCarPlayPreGrid(cpInterface: cpInterface)
  
 
     
    
    let image = #imageLiteral(resourceName: "note")
    
    let buttonOne: CPGridButton = CPGridButton(titleVariants: ["Plukkliste"], image: image, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(templatePickUpList, animated: false, completion: nil)
        }
    })
    let buttonTwo: CPGridButton = CPGridButton(titleVariants: ["Forhåndsliste"], image: image, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(templatePreList, animated: false, completion: nil)
        }
    })
    
    
   
    
    
   
    let template = CPGridTemplate(title: " Lister", gridButtons: [buttonOne, buttonTwo])
  
    return template
    
}
