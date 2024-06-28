//
//  Destination.swift
//  BudJET
//
//  Created by Scholar on 6/25/24.
//

import MapKit
import SwiftUI
struct Destination: View {
    
    
    @State var region  = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 54.5260, longitude: 15.2551), span: MKCoordinateSpan(latitudeDelta: 50, longitudeDelta: 50)
                                            
    )
    
    
    
    var body: some View {
        
        NavigationView {
            VStack (spacing: 20.0) {
                Map(coordinateRegion: $region)
                
                
                
                    Button(action: {
                    
                    withAnimation{region.span = MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
                        
                    }}, label: {
                        Text("Zoom In")
                            .frame(width: 175, height:50, alignment: .center)
                            .foregroundColor(.black)
                            .fontWeight(.bold)
                            .background(Color(hue: 0.892, saturation: 0.902, brightness: 0.802))
                            .cornerRadius(8)
                        
                        NavigationLink(destination: Budget()) {
                            Text("Go to Budget")
                                .frame(width: 175, height:50, alignment: .center)
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .background(Color(hue: 0.892, saturation: 0.902, brightness: 0.802))
                                .cornerRadius(8)
                        }
                    }
                )}
            }
        }
}
#Preview {
    Destination()
}


