import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        List(landmarks) { model in
            LandmarkRowView(landmark: model)
        }
    }
}

struct LandmarkListView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkListView()
    }
}
