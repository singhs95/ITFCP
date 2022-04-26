//
//  File.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 16/02/2022.
//
import Foundation
import CarPlay

func createCarPlayListScreen2(cpInterface: CPInterfaceController) -> CPTemplate {
    
    let template = CPListTemplate(title: "Oversikt", sections: [])
    
    var listItems: [CPListItem] = []
    
    let listItemPressedHandler: () -> () = {
        // When a list item is selected we call updateSections, this triggers a redraw
        // of the List view hiding the spinner triggered on selction
        template.updateSections([CPListSection(items: listItems)])
    }

    listItems.append(createListItem(cpInterface: cpInterface, title: "401", detailText: "Kalbakken", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "402", detailText: "Oslo S", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "403", detailText: "Frogner", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "404", detailText: "Skøyen", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "405", detailText: "Grorud", onPress: listItemPressedHandler))
    listItems.append(createListItem(cpInterface: cpInterface, title: "406", detailText: "Ensjø", onPress: listItemPressedHandler))
    
    template.updateSections([CPListSection(items: listItems)])
    
    template.tabTitle = "List Screen"
    template.tabImage = #imageLiteral(resourceName: "woman")
    
    
    return template
}

func createListItem(cpInterface: CPInterfaceController, title: String, detailText: String, onPress: (()->())?) -> CPListItem {
    
    let listItem = CPListItem(text: title, detailText: detailText)
    
    listItem.handler = {_, _ in
        cpInterface.pushTemplate(createCarParkDetailScreen(cpInterface: cpInterface, driverName: title), animated: true, completion: {_,_  in
            if(onPress != nil) {
                onPress!()
            }
        })
    }
    return listItem
}




