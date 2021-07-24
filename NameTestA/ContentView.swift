//
//  ContentView.swift
//  NameTestA
//
//  Created by Tadahiro Kato on 2021/07/24.
//

import SwiftUI

struct ContentView: View {
    @State var nameData: [String] = [
        "岡本太郎",
        "黒澤明"
    ]
    
    @State var selNum: Int = 0
    @State var name: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selNum, label: Text("名前選択")) {
                    ForEach(0 ..< nameData.count, id: \.self) {index in
                        Text(nameData[index])
                    }
                }
                TextField("名前入力", text: $name)
                Button(action: {
                    
                }) {
                    Text("追加する")
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
