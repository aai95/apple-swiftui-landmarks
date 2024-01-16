import SwiftUI
import CoreLocation

struct LandmarkModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    var image: Image {
        Image(imageName)
    }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    private var imageName: String
    private var coordinates: Coordinates
}

private struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}
