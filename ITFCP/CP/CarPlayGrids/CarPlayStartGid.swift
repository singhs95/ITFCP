//
//  CarPlayStartGid.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 26/04/2022.
//

import Foundation
import CarPlay


func createCarPlayStartGid(cpInterface: CPInterfaceController) -> CPTemplate {

    
    let templateListGrid = createCarPlayListGridView(cpInterface: cpInterface)
    let testtemplate1 = createCarPlayListScreen2(cpInterface: cpInterface)
    let testtemplate4 = createCarParkDetailScreen(cpInterface: cpInterface, driverName:"Fasteoppdrag")
    let templateSettings = createCarPlayBonusListOne(cpInterface: cpInterface)
    
    
    let image = #imageLiteral(resourceName: "note")
    let imagetwo = #imageLiteral(resourceName: "overView")
    let imageTre = #imageLiteral(resourceName: "taxi")
    let imageFour = #imageLiteral(resourceName: "gear")
    
                                 
                                 
 

                                 
    let buttonOne: CPGridButton = CPGridButton(titleVariants: ["Lister"], image: image, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(templateListGrid, animated: false, completion: nil)
        }
    })
        
let buttonTwo: CPGridButton = CPGridButton(titleVariants: ["Oversikt"], image: imagetwo, handler: { _ in
    DispatchQueue.main.async {
        cpInterface.pushTemplate(testtemplate1, animated: false, completion: nil)
    }
})
    let buttonTre: CPGridButton = CPGridButton(titleVariants: ["Fasteoppdrag"], image: imageTre, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(testtemplate4, animated: false, completion: nil)
        }
    })
    
    let buttonfour: CPGridButton = CPGridButton(titleVariants: ["Innstiliger"], image: imageFour, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(templateSettings, animated: false, completion: nil)
        }
    })
    
    
    
    
    
    
    
   
    
    let template = CPGridTemplate(title: "Velkommen", gridButtons: [buttonOne,buttonTwo,buttonTre,buttonfour])
    
  
    return template
    
}


                                           
                                           
                                           
                                           
                                
    
