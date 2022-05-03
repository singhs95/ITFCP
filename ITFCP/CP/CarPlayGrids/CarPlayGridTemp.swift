//
//  File.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 16/02/2022.
//

import Foundation
import CarPlay

func createCarPlayGridTemp(cpInterface: CPInterfaceController) -> CPTemplate {
    

    let testtemplate = createCarPlayPOISCreen(cpInterface: cpInterface)
    let testtemplate2 = createCarPlayPreGrid(cpInterface: cpInterface)
    let testtemplate4 = createCarParkDetailScreen(cpInterface: cpInterface, driverName:"Forhåndslister")
    let testtemplate5 = createCarPlayBonusListOne(cpInterface: cpInterface)
    
   // let image = #imageLiteral(resourceName: "taxi")
    let image2 = #imageLiteral(resourceName: "woman")
    let image3 = #imageLiteral(resourceName: "MapMarker")
    let image4 = #imageLiteral(resourceName: "superhero")
    let image5 = #imageLiteral(resourceName: "overView")
    let image6 = #imageLiteral(resourceName: "bonus")
    
 
    
    let buttonOne: CPGridButton = CPGridButton(titleVariants: ["Plukklist"], image: image3, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(testtemplate, animated: false, completion: nil)
        }
    })
    let buttonTwo: CPGridButton = CPGridButton(titleVariants: ["Forhåndsliste"], image: image2, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(testtemplate2, animated: false, completion: nil)
        }
  
    })
    let buttonFour: CPGridButton = CPGridButton(titleVariants: ["Fasteoppdrag"], image: image4, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(testtemplate4, animated: false, completion: nil)
        }
    })

    let buttonSix: CPGridButton = CPGridButton(titleVariants: ["Bonus"], image: image6, handler: { _ in
        DispatchQueue.main.async {
            cpInterface.pushTemplate(testtemplate5, animated: false, completion: nil)
        }
    })
    let template = CPGridTemplate(title: "ITF AppleCarplay", gridButtons: [buttonOne, buttonTwo, buttonFour,buttonSix,])
 
    return template
    
}
