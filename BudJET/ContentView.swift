import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("OrangeBlob")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Image("Logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(50.0)
                        .padding(.bottom, 50)
                    
                    NavigationLink(destination: Destination()) {
                        Text("🛫")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding()
                    }
                    
                    NavigationLink(destination: InfoPage()) {
                        Text("ℹ")
                            .font(.largeTitle)
                            .padding()
                            .background(Color.white.opacity(0.2))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 50)
                }
                .padding()
            }
            .navigationTitle("Home")
        }
    }
}
//import SwiftUI
//struct ContentView: View {
//    var body: some View {
//        NavigationStack{
//            ZStack {
//                Image("OrangeBlob")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                VStack{
//                    Image("Logo")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .padding()
//                        .padding()
//                        .padding()
//                        .padding()
//                    
//                    NavigationLink(destination: Destination()) {
//                        Text("🛫")
//                            .padding()
//                            .background(Color.white.opacity(0.2))
//                            .cornerRadius(10)
//                            .foregroundColor(.white)
//                    }
//                    .font(.largeTitle)
//                    .padding()
//                }
//                VStack{
//                    NavigationLink(destination: InfoPage()) {
//                        Text("ℹ")
//                            .background(Color.white.opacity(0.2))
//                            .multilineTextAlignment(.leading)
//                            .cornerRadius(10)
//                            .position(x: 185, y: 470)
//                            .foregroundColor(.white)
//                            .padding()
//                    }
//                }
//            }
//        }
//        .font(.largeTitle)
//        .padding()
//    }
//}
//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            ZStack {
//                Image("OrangeBlob")
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .edgesIgnoringSafeArea(.all)
//                
//                VStack {
//                    Image("Logo")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .padding()
//                    
//                    NavigationLink(destination: Destination()) {
//                        Text("🛫")
//                            .padding()
//                            .background(Color.white.opacity(0.2))
//                            .cornerRadius(10)
//                            .foregroundColor(.white)
//                    }
//                    .font(.largeTitle)
//                    .padding()
//                    VStack{
//                        NavigationLink(destination: InfoPage()) {
//                            Text("ℹ")
//                                .background(Color.white.opacity(0.2))
//                                .multilineTextAlignment(.leading)
//                                .cornerRadius(10)
//                                .position(x: 185, y: 470)
//                                .foregroundColor(.white)
//                                .padding()
//                        }
//                    }
//                }
//            }
//            .navigationBarTitle("") // Empty title to hide the default back button text
//            .navigationBarHidden(true) // Hide the navigation bar
//        }
//        .font(.largeTitle)
//        .padding()
//    }
//}

    #Preview {
        ContentView()
    }
