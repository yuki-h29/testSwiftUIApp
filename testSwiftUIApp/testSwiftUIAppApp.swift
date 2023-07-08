//
//  testSwiftUIAppApp.swift
//  testSwiftUIApp
//
//  Created by 平野裕貴 on 2023/07/08.
//

import SwiftUI

@main
struct testSwiftUIAppApp: App {
    var body: some Scene {
        WindowGroup {
            FirstView(viewModel: FirstViewViewModel(model: FirstViewModel()))
        }
    }
}
