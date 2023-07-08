//
//  ContentView.swift
//  testSwiftUIApp
//
//  Created by 平野裕貴 on 2023/07/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    NavigationLink(destination: SecondView()) {
                        Text("Go to Second View")
                            .frame(width: 100, height: 30)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.top, 10)
            .padding(.leading, 10)
            .navigationBarTitle("First View", displayMode: .inline)
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("Second View")
            .font(.largeTitle)
            .navigationBarTitle("Second View", displayMode: .inline)
    }
}
