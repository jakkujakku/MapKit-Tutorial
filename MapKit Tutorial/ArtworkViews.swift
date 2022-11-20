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
        let mapsButton = UIButton(frame: CGRect(
          origin: CGPoint.zero,
          size: CGSize(width: 48, height: 48)))
        mapsButton.setBackgroundImage(#imageLiteral(resourceName: "Map"), for: .normal)
        rightCalloutAccessoryView = mapsButton

      // 2
      markerTintColor = artwork.markerTintColor
      if let letter = artwork.discipline?.first {
          glyphImage = artwork.image

      }
    }
  }

}

class ArtworkView: MKAnnotationView {
  override var annotation: MKAnnotation? {
    willSet {
      guard let artwork = newValue as? Artwork else {
          return
      }
      canShowCallout = true
      calloutOffset = CGPoint(x: -5, y: 5)
        let mapsButton = UIButton(frame: CGRect(
          origin: CGPoint.zero,
          size: CGSize(width: 48, height: 48)))
        mapsButton.setBackgroundImage(#imageLiteral(resourceName: "Map"), for: .normal)
        rightCalloutAccessoryView = mapsButton

        let detailLabel = UILabel()
        detailLabel.numberOfLines = 0
        detailLabel.font = detailLabel.font.withSize(12)
        detailLabel.text = artwork.subtitle
        detailCalloutAccessoryView = detailLabel

        image = artwork.image
    }
  }
}

