//
//  ContentView.swift
//  Result
//
//  Created by Pushpendra on 30/05/25.
//

import SwiftUI
import Combine

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            let result = divide(10, 0)

            switch result {
            case .success(let value):
                print("Result: \(value)")
            case .failure(let error):
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    
    
    func divide(_ a: Int, _ b: Int) -> Result<Int, Error> {
        if b == 0 {
            return .failure(NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Cannot divide by zero"]))
        } else {
            return .success(a / b)
        }
    }
}

#Preview {
    ContentView()
}
