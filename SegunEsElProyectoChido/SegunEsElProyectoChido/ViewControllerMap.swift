//
//  ViewControllerMap.swift
//  SegunEsElProyectoChido
//
//  Created by Sheryl Anaya on 5/22/19.
//  Copyright © 2019 Sheryl Anaya. All rights reserved.
//

import UIKit
import MapKit

class ViewControllerMap: UIViewController,
    CLLocationManagerDelegate{
    var locationManager = CLLocationManager()
    

    @IBOutlet weak var viewMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewMap.mapType = .standard
        
        if CLLocationManager.locationServicesEnabled(){
            checkLocationAutorization()
            locationManager.delegate = self
            
            let location = CLLocationCoordinate2DMake(19.432675, -99.133500
)
            let clinic1 = MKPointAnnotation()
            clinic1.coordinate = CLLocationCoordinate2D(latitude: 19.337141, longitude: -99.200114)
            clinic1.title = "Gineco 4"
            clinic1.subtitle = " Teléfono 55 5550 6422"
            
            let clinic2 = MKPointAnnotation()
            clinic2.coordinate = CLLocationCoordinate2D(latitude: 19.337141, longitude: -99.200114)
            clinic2.title = "Gineco 4"
            clinic2.subtitle = " Teléfono 55 5550 6422"
            
            
            
            
            
            
            let span = MKCoordinateSpan(latitudeDelta: 0.002, longitudeDelta: 0.002)
            let region = MKCoordinateRegion(center: location, span: span)
            
            
            
            
            viewMap.setRegion(region, animated: true)
            viewMap.addAnnotation(clinic1)
            viewMap.setRegion(region, animated: true)
            viewMap.addAnnotation(clinic2)
            
            
            
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func checkLocationAutorization(){
        switch CLLocationManager.authorizationStatus() {
        case .authorizedWhenInUse:
            viewMap.showsUserLocation = true
            locationManager.startUpdatingLocation()
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            break
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
            break
        case .denied:
            print("No nos dejo ocupar ubicacion")
            break
        case .restricted:
            print("Lo de atras")
            break
        case .authorizedAlways:
            print("Siempre autorizado")
            break
            
        }
    }
    


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


