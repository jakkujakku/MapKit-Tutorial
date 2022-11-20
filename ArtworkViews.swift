//
//  ArtworkViews.swift
//  MapKit Tutorial
//
//  Created by (^ㅗ^)7 iMac on 2022/11/21.
//

import Foundation
import MapKit

class ArtworkMarkerView: MKMarkerAnnotationView {
  override var annotation: MKAnnotation? {
    willSet {
      // 1
      guard let artwork = newValue as? Artwork else {
        return
      }
      canShowCallout = true
      calloutOffset = CGPoint(x: -5, y: 5)
      rightCalloutAccessoryView = UIButton(type: .detailDisclosure)

      // 2
      markerTintColor = artwork.markerTintColor
      if let letter = artwork.discipline?.first {
        glyphText = String(letter)
      }
    }
  }
}
