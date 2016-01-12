//
//  MapLocationsController.swift
//  Sts44bMapLocations
//
//  Created by Seanmichael Stanley on 9/8/15.
//  Copyright (c) 2015 Seanmichael Stanley. All rights reserved.
//

import UIKit
import MapKit

class MapLocationsController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var latitude: CLLocationDegrees = 44.077868
        var longitude: CLLocationDegrees = -90.983308
        var latDelta: CLLocationDegrees = 0.03
        var lonDelta: CLLocationDegrees = 0.03
        
        var span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        var location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        mapView.setRegion(region, animated: true)
        
        var anotation = MKPointAnnotation()
        anotation.coordinate = location
        anotation.title = "Grandpa's Cabin"
        anotation.subtitle = "Here is Grandpa Frazier's Cabin"
        mapView.addAnnotation(anotation)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
