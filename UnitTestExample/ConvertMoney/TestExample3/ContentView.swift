//
//  ContentView.swift
//  TestExample3
//
//  Created by engin gülek on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = ViewModel()
    var body: some View {
        Form {
            VStack(spacing:20 ){
                Text("\(vm.convertedText)")
                    .font(.headline)
                TextField("EnterValue", text: $vm.text)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.decimalPad)
                    .submitLabel(.done)
                
                Button("Convert") {
                    vm.convertMony()
                }
                .buttonStyle(.borderedProminent)
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
