import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("TurtleRock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
