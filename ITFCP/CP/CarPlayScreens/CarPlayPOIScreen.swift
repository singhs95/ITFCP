//
//  File.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 16/02/2022.
//

// FÅ MAPS TIL OG EVT KJØRE


import Foundation
import CarPlay
import SwiftUI


func createCarPlayPOISCreen(cpInterface: CPInterfaceController) -> CPTemplate {
    var pois: [CPPointOfInterest] = []
    pois.append(createPOI(cpInterface: cpInterface, name: "403", lat: 59.911491, long: 10.757933))
    pois.append(createPOI(cpInterface: cpInterface, name: "402", lat: 59.911491, long: 10.860591))
    pois.append(createPOI(cpInterface: cpInterface, name: "401", lat: 59.911491, long: 10.663016))
    pois.append(createPOI(cpInterface: cpInterface, name: "409", lat: 2.046934, long: 45.318161))
    pois.append(createPOI(cpInterface: cpInterface, name: "406", lat: 36.911491, long: 10.663016))
    pois.append(createPOI(cpInterface: cpInterface, name: "410", lat: 52.911491, long: 10.663016))
    pois.append(createPOI(cpInterface: cpInterface, name: "435", lat: 69.911491, long: 10.663016))
    pois.append(createPOI(cpInterface: cpInterface, name: "444", lat: 49.911491, long: 10.663016))
    pois.append(createPOI(cpInterface: cpInterface, name: "475", lat: 71.911491, long: 10.663016))
    
    let template = CPPointOfInterestTemplate(title: "Kjøreliste", pointsOfInterest: pois, selectedIndex: NSNotFound)
    
    
    return template
}


func createPOI(cpInterface: CPInterfaceController, name: String, lat: Double, long: Double) -> CPPointOfInterest {
    
    let location = MKMapItem(placemark: MKPlacemark(coordinate: CLLocationCoordinate2D(latitude: lat, longitude: long)))
    
    //let launchOptions: [String] = [MKLaunchOptionsDirectionsModeDefault, MKLaunchOptionsMapTypeKey,]
    
    
    let image = #imageLiteral(resourceName: "woman").resized(to: CGSize(width: 10, height: 10))
    
    //let pinImage = UIImage(cgImage: image.cgImage!, scale: 1, orientation: image.imageOrientation)
    
        
    let poi = CPPointOfInterest(location: location, title: name, subtitle: "Sone", summary: " Trykk for godta", detailTitle: name, detailSubtitle: "Pick Up Info", detailSummary: "Pick up code", pinImage: image)
    
    //let openNavi = MKMapItem.openMaps(with: nil)
    
    
    
   poi.primaryButton = CPTextButton(title: "Start pickup", textStyle: .normal, handler: { _ in
        cpInterface.pushTemplate(createCarParkDetailScreen(cpInterface: cpInterface, driverName: name), animated: true)
       
       
       
        })
    
    
    
    
    return poi
}
