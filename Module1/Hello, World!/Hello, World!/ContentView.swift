//
//  ContentView.swift
//  Hello, World!
//
//  Created by Berry, Brett A. (Student) on 8/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, World!")
            Text("I can now make changes to the text shown on my iPhone").multilineTextAlignment(.center).padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
