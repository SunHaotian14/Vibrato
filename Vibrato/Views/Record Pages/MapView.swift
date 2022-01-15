//
//  MapView.swift
//  Vibrato
//
//  Created by Haotian SUN on 2022/1/13.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        uiView.showsUserLocation = true
        uiView.mapType = MKMapType.satellite
        
        let coordinate2D = CLLocationCoordinate2D(latitude: 37.915352, longitude: 116.397105)
        let zoomLevel = 0.02
        let region = MKCoordinateRegion(center: coordinate2D, span: MKCoordinateSpan(latitudeDelta: zoomLevel, longitudeDelta: zoomLevel))
        uiView.setRegion(uiView.regionThatFits(region), animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
