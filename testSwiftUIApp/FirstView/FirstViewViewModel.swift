//
//  FirstViewViewModel.swift
//  testSwiftUIApp
//
//  Created by 平野裕貴 on 2023/07/08.
//

import Foundation

// ObservableObjectを継承したFirstViewViewModel
class FirstViewViewModel: ObservableObject {
    // inputTextとdisplayTextはObservableObjectの一部として公開されるプロパティで、
    // これらのプロパティの変化を監視することができます。(@Publishedを使用)
    @Published var inputText: String = ""
    @Published var displayText: String = ""
    
    // モデルオブジェクトを保持
    var model: FirstViewModel
    
    // モデルオブジェクトを引数にとるイニシャライザ
    init(model: FirstViewModel) {
        self.model = model
    }
    
    // 確定ボタンが押された時の処理を定義したメソッド
    func confirmButtonPressed() {
        // モデルのtextプロパティに、inputTextの値をセット
        model.text = inputText
        // displayTextにも同じ値をセット。これによりビューが更新され、入力されたテキストが表示されます。
        displayText = model.text
    }
}
