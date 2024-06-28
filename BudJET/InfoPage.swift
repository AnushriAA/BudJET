import SwiftUI

struct InfoPage: View {
    var body: some View {
        VStack {
            VStack {
                Text("Scams")
                    .fontWeight(.heavy)
                Divider()
                    .background(Color.pink)
            }
            .font(.title)
            .foregroundColor(.pink)
            
            VStack {
                Text("Request From a Kind Stranger")
                    .font(.headline)
                    .padding()
                Text("Never agree to transport anything from a stranger. Chances are, you are next to be caught smuggling something and local authorities will not buy your story.")
                    .font(.system(size: 12))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.pink)
                
                VStack {
                    Text("Broken Taxi Meters")
                        .font(.headline)
                        .padding()
                    Text("Some taxi drivers try to upcharge riders and claim their meter is broken. This is a waste of money. Be sure to use reputable transportation.")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                    
                    VStack {
                        Text("Charity Scam at Tourist Spots")
                            .font(.headline)
                            .padding()
                        Text("In tourist spots, fake charity organizers may approach you and heavily emphasize on signing a petition or fund. Do not sign your full name or provide any account information as your identity may become compromised.")
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.pink)
                    }
                    
                    VStack {
                        Text("Pickpocketing")
                            .font(.headline)
                            .padding()
                        Text("Be weary of your belongings, especially wallets and cash when traveling to local destinations via public transport or in crowded streets.")
                            .font(.system(size: 12))
                            .fontWeight(.bold)
                            .padding()
                            .background(Color.orange)
                        
                        NavigationLink(destination: Budget()) {
                            Text("Budget")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            .padding()
        }
        .navigationBarTitle("Info Page") // Set navigation bar title
    }
}


        #Preview {
            InfoPage()
        }
