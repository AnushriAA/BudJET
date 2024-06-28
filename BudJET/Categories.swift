

import SwiftUI

struct Categories: View {
    @Binding var budgetVal: Int
    
    @State private var categories: [String: Double] = [
        "Food": 0.0,
        "Housing": 0.0,
        "Site-Seeing": 0.0,
        "Transportation": 0.0,
        "Shopping": 0.0
    ]
    
    @State private var selectedCategory: String?
    @State private var withdrawAmount = ""
    @State private var withdrawMessage = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(hue: 0.89, saturation: 0.902, brightness: 0.802)
                    .ignoresSafeArea()
                
                VStack(alignment: .leading, spacing: 20.0) {
                    HStack {
                        Text("Total Money:")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .background(Color.orange)
                            .cornerRadius(15.0)
                        Text("$\(budgetVal)")
                            .font(.title)
                    }
                    
                    Button("Show Budget Category Values") {
                        if budgetVal > 0 {
                            categories["Food"] = 0.25 * Double(budgetVal)
                            categories["Housing"] = 0.3 * Double(budgetVal)
                            categories["Site-Seeing"] = 0.15 * Double(budgetVal)
                            categories["Transportation"] = 0.2 * Double(budgetVal)
                            categories["Shopping"] = 0.1 * Double(budgetVal)
                        }
                    }
                    .font(.title2)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(15.0)
                    
                    ForEach(categories.sorted(by: <), id: \.key) { key, value in
                        HStack {
                            Text("\(key):")
                                .font(.largeTitle)
                                .background(Color.orange)
                                .cornerRadius(15.0)
                            Text("$\(value)")
                                .font(.title)
                            Button("Withdraw") {
                                selectedCategory = key
                            }
                            .font(.title2)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(15.0)
                        }
                        .padding(.vertical, 5)
                    }
                    
                    if let selectedCategory = selectedCategory {
                        TextField("Enter amount for \(selectedCategory)", text: $withdrawAmount)
                            .multilineTextAlignment(.center)
                            .font(.title2)
                            .padding()
                    }
                    
                    Button("Confirm Withdrawal") {
                        guard let selectedCategory = selectedCategory else {
                            return
                        }
                        
                        if let amount = Double(withdrawAmount), amount > 0 {
                            if amount <= categories[selectedCategory]! {
                                categories[selectedCategory]! -= amount
                                withdrawMessage = "Successfully withdrawn $\(amount) from \(selectedCategory)"
                                withdrawAmount = ""
                                self.selectedCategory = nil
                            } else {
                                withdrawMessage = "Insufficient funds in \(selectedCategory)"
                            }
                        } else {
                            withdrawMessage = "Invalid amount"
                        }
                    }
                    .font(.title2)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(15.0)
                    .padding()
                    
                    Text("\(withdrawMessage)")
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
}
