//
//  FirstView.swift
//  testSwiftUIApp
//
//  Created by 平野裕貴 on 2023/07/08.
//

import SwiftUI

// SwiftUIのViewを継承したFirstView
struct FirstView: View {
    // ビューモデルをObservedObjectとして保持します。
    // これにより、ビューモデルの状態の変更を監視し、状態が変化した際にビューを更新することができます。
    @ObservedObject var viewModel: FirstViewViewModel
    
    // Viewの本体。ここにViewのUIを定義します。
    var body: some View {
        // UI要素を縦方向に並べるVStack
        VStack {
            // テキストフィールド。ユーザーがテキストを入力できます。
            // テキストフィールドの入力値はビューモデルのinputTextにバインドされています。
            TextField("Enter text", text: $viewModel.inputText)
                .padding() // パディングを追加
                .border(Color.gray, width: 0.5) // ボーダーを追加
            
            // ボタン。ボタンがタップされると、ビューモデルのconfirmButtonPressedメソッドが呼ばれます。
            Button(action: {
                viewModel.confirmButtonPressed()
            }) {
                Text("Confirm") // ボタンのテキスト
            }
            .padding() // パディングを追加
            
            // テキスト。ビューモデルのdisplayTextを表示します。
            Text("Entered text: \(viewModel.displayText)")
        }
        .padding() // パディングを追加
    }
}
