import SwiftUI
import GoogleSignIn

struct ContentView: View {
    @EnvironmentObject var authServiceModel: AuthServiceModel
    
    var body: some View {
        VStack {
            if authServiceModel.signState == .signIn {
                MainView()
            } else {
                LoginView()
            }
        }
        .padding()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
