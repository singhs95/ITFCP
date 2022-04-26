//
//  CarPlayBonusListOne.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 11/04/2022.
//

import Foundation
import CarPlay



// kan hente inn data på pushTemplate

func createCarPlayBonusListOne(cpInterface: CPInterfaceController) -> CPListTemplate {

//func createCarPlayBonusListOne(cpInterface: CPInterfaceController) -> CPTemplate {
    
    
    var listItems: [CPListItem] = []
    
    listItems.append(createBonusItemList(cpInterface: cpInterface, title: "BONUS", detailText: " "))
    listItems.append(createShiftItemList(cpInterface: cpInterface, title: "SKIFT", detailText: " "))


    let template = CPListTemplate(title: "Bonus Info", sections: [CPListSection(items: listItems)])

    template.tabTitle = "Bonus Info"
    template.tabImage = #imageLiteral(resourceName: "bonus")
    
    return template
}

func createBonusItemList(cpInterface: CPInterfaceController, title: String, detailText: String) -> CPListItem {
    
   let listItem = CPListItem(text: title, detailText: detailText)
    
    listItem.handler = {bar,completion in
        cpInterface.pushTemplate(createCarPlayBounsDetaliScreen(cpInterface: cpInterface, driverName: "BONUS"), animated: false)
        
        completion()
        
    }
    
    return listItem
    
}

func createShiftItemList(cpInterface: CPInterfaceController, title: String, detailText: String) -> CPListItem {
    
    let listItemTwo = CPListItem(text: title, detailText: detailText)
    
    listItemTwo.handler = {bar, completion in
        cpInterface.pushTemplate(createCarPlayShiftDetaliScreen(cpInterface: cpInterface, driverName:"Shift"), animated: false)
        completion()
    }
    return listItemTwo
    
}





