//
//  MapDetail.swift
//  SegunEsElProyectoChido
//
//  Created by Sheryl Anaya on 5/22/19.
//  Copyright © 2019 Sheryl Anaya. All rights reserved.
//

import Foundation
import MapKit

class lugares: NSObject, MKAnnotation{
    var title: String?
    var coordinate: CLLocationCoordinate2D
    
    init(title: String, coordinate:CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
        
    }
}
