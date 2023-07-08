//
//  FirstViewModel.swift
//  testSwiftUIApp
//
//  Created by 平野裕貴 on 2023/07/08.
//

import Foundation

// ObservableObjectを継承したFirstViewModel
// ObservableObjectは、その状態の変化を監視できるオブジェクトを表します。
class FirstViewModel: ObservableObject {
    // textはObservableObjectの一部として公開されるプロパティで、
    // このプロパティの変化を監視することができます。(@Publishedを使用)
    @Published var text: String = ""
}
