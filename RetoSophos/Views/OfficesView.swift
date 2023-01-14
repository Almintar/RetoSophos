//
//  OfficesView.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 13/01/23.
//

import MapKit
import SwiftUI

struct OfficesView: View {


    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 4.644335, longitude: -74.08),
        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))

    private let places: [Location] = [
        Location(coordinate: CLLocationCoordinate2D(latitude: 4.612525050021438, longitude: -74.06940610000004)),
                 Location(coordinate: CLLocationCoordinate2D(latitude: 4.6796679999999995, longitude: -74.044757)),
        Location(coordinate: CLLocationCoordinate2D(latitude: 40.7504055, longitude: -73.98382049999998)),
        Location(coordinate: CLLocationCoordinate2D(latitude: 6.218229100000025, longitude: -75.58021739999998)),
        Location(coordinate: CLLocationCoordinate2D(latitude: 6.224464299999994, longitude: -75.57454939999997)),
        Location(coordinate: CLLocationCoordinate2D(latitude: 9.005743200000007, longitude: -79.5875616999999)),
        Location(coordinate: CLLocationCoordinate2D(latitude: 19.42736700000002, longitude: -99.16522090000001))
    ]

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: places, annotationContent: { places in
            MapPin(coordinate: places.coordinate)
        }) //MapAnnotation
    }
}

struct Location: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}

struct OfficesView_Previews: PreviewProvider {
    static var previews: some View {
        OfficesView()
            .preferredColorScheme(.dark)
    }
}
