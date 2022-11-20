//
//  ViewController.swift
//  MapKit Tutorial
//
//  Created by (^ㅗ^)7 iMac on 2022/11/21.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    
    @IBOutlet private var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 37.5866, longitude: 126.9748)
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.centerToLocation(initialLocation)
    }


}

private extension MKMapView {
  func centerToLocation(
    _ location: CLLocation,
    regionRadius: CLLocationDistance = 1000
  ) {
    let coordinateRegion = MKCoordinateRegion(
      center: location.coordinate,
      latitudinalMeters: regionRadius,
      longitudinalMeters: regionRadius)
    setRegion(coordinateRegion, animated: true)
  }
}
