//
//  CarPlaySceneDelegate.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 16/02/2022.
//


import Foundation
import CarPlay


class CarplaySceneDelegate : UIResponder, CPTemplateApplicationSceneDelegate{
    
    
    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene,
                                  didConnect interfaceController: CPInterfaceController) {
        
        let template = createCarPlayGridTemp(cpInterface: interfaceController)
        
        
        interfaceController.setRootTemplate( template, animated: false)
        
    }
}


