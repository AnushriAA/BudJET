//
//  Budget.swift
//  BudJET
//
//  Created by Scholar on 6/25/24.
//

import SwiftUI

struct Budget: View {
    
    // creating state variable for other views to bind to
    @State private var budgetVal = 0
    @State var budget1 = ""
    var body: some View {
        NavigationStack {
        ZStack{
                Color(Color(hue: 0.89, saturation: 0.902, brightness: 0.802))
                    .ignoresSafeArea()
                VStack{
                    Text("  Enter budget     amount  in USD:        ")
                        .multilineTextAlignment(.center)
                        .background(.orange)
                        .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .cornerRadius(15.0)
                        .padding()
                    TextField("Enter value", text: $budget1)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .padding()
                
                    
                    Button("Submit    ") {
                        budgetVal = Int(budget1) ?? 0
                    }
                    .foregroundColor(.black)
                    .font(.title)
                    .background(.blue)
                    .cornerRadius(15.0)
                    .padding()

                    
                    // passing budgetVal variable to the categories screen via binding ($)
           
                        NavigationLink(destination: Categories(budgetVal: $budgetVal)) {
                            Text(" Go to Budget for  each Category")
                                .foregroundColor(.black)
                                .font(.title)
                                .background(.orange)
                                .cornerRadius(15.0)
                                .padding()
                        }
                        NavigationLink(destination: InfoPage()) {
                            Text(" Go to Info Page  ")
                                .foregroundColor(.black)
                                .font(.title)
                                .background(.orange)
                                .cornerRadius(15.0)
                                .padding()
                        }
                       
                    }
                    .padding()
                    
                    
                }
                
            }
        }
    func convertBudget(budget1: String) -> Int {
        if let budgetVal1 = Int(budget1) {
                return budgetVal1
            } else {
                return 0
            }
        }
}




#Preview {
    Budget()
}
