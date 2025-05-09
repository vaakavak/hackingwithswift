//
//  ContentView.swift
//  WeSplit
//
//  Created by Евгений Шилов on 09.05.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var chekAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 30, 35, 40, 45, 50, 0 ]
    
    var body: some View {
        Form{
            Section{
                TextField("Сумма", value: $chekAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    .keyboardType(.decimalPad)
            }
            
            Section{
                Text(chekAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            }
        }
    }
}

#Preview {
    ContentView()
}
