//
//  MapViewController.swift
//  PilotPlantSwift
//
//  Created by lingostar on 2014. 11. 1..
//  Copyright (c) 2014년 lingostar. All rights reserved.
//

import UIKit
import MapKit

open class MapScene: UIViewController {
    @IBInspectable open var mapCenter = CGPoint(x: 36.976775, y: 128.362891)
    @IBInspectable open var mapSpan = CGSize(width: 0.005, height: 0.005)
    
    var chMapView = MKMapView()
    
    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        for view in self.view.subviews {
            if view is MKMapView {
                chMapView = view as! MKMapView
            }
        }
        
        if chMapView.superview == nil {
            chMapView.frame = self.view.frame
            self.view.addSubview(chMapView)
        }
    }
    
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let center = CLLocationCoordinate2DMake(Double(mapCenter.x), Double(mapCenter.y))
        let span = MKCoordinateSpanMake(Double(mapSpan.width), Double(mapSpan.height))
        let region = MKCoordinateRegionMake(center, span)
        chMapView.setRegion(region, animated: true)
    }
}
