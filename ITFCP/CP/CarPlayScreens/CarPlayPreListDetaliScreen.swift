//
//  CarPlayListScreen.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 16/02/2022.
//

import Foundation
import CarPlay

func CarPlayPreListDetaliScreen(cpInterface: CPInterfaceController) -> CPTemplate {
    var listItems: [CPListItem] = []
    
    listItems.append(createListItem(cpInterface: cpInterface, title: "Sjåfør 1", detailText: "Dagens turer"))
    listItems.append(createListItem(cpInterface: cpInterface, title: "Sjåfør 2", detailText: "Dagen turer"))

    let template = CPListTemplate(title: "List Screen", sections: [CPListSection(items: listItems)])

    template.tabTitle = "List Screen"
    template.tabImage = #imageLiteral(resourceName: "bonus")
    
    return template
}

func createListItem(cpInterface: CPInterfaceController, title: String, detailText: String) -> CPListItem {
    
    let listItem = CPListItem(text: title, detailText: detailText)
    
    listItem.handler = {_, _ in
     cpInterface.pushTemplate(createCarParkDetailScreen(cpInterface: cpInterface, driverName: title), animated: true)
    }
    
    return listItem
}


