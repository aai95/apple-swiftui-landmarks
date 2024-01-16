import Foundation

var landmarks: Array<LandmarkModel> = decodeJSONFile(name: "Landmarks")

func decodeJSONFile<Entity: Decodable>(name: String) -> Entity {
    
    let suffix = "json"
    let fileName = "\(name).\(suffix)"
    let data: Data
    
    guard
        let url = Bundle.main.url(forResource: name, withExtension: suffix)
    else {
        preconditionFailure("Failed to find file \(fileName) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: url)
    } catch {
        preconditionFailure("Failed to load file \(fileName) from main bundle with \(error)")
    }
    
    do {
        return try JSONDecoder().decode(Entity.self, from: data)
    } catch {
        preconditionFailure("Failed to decode file \(fileName) to \(Entity.self) with \(error)")
    }
}
