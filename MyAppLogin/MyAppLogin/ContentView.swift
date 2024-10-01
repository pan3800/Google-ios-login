import SwiftUI
import GoogleSignIn

struct ContentView: View {
    @EnvironmentObject var authServiceModel: AuthServiceModel
    
    var body: some View {
        VStack {
            Button {
                print ( "Google 로그인 탭됨" )
                authServiceModel.googleSignIn()
            } label: {
                Image("ios_light_sq_ctn")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 150)
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
