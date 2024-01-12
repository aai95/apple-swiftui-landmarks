import SwiftUI

struct LandmarkRowView: View {
    var landmark: LandmarkModel
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

struct LandmarkRowView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRowView(landmark: landmarks[0])
    }
}
