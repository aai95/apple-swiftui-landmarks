import Foundation

var landmarks: Array<LandmarkModel> = decodeJSONFile(name: "Landmarks")

func decodeJSONFile<Entity: Decodable>(name: String) -> Entity {
    
    let suffix = "json"
    let data: Data
    
    guard
        let url = Bundle.main.url(forResource: name, withExtension: suffix)
    else {
        preconditionFailure("Failed to find file \(name).\(suffix) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: url)
    } catch {
        preconditionFailure("Failed to load file \(name).\(suffix) from main bundle with \(error)")
    }
    
    do {
        return try JSONDecoder().decode(Entity.self, from: data)
    } catch {
        preconditionFailure("Failed to decode file \(name).\(suffix) to \(Entity.self) with \(error)")
    }
}
