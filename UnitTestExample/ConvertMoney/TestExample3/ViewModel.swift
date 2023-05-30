//
//  ViewModel.swift
//  TestExample3
//
//  Created by engin gülek on 30.05.2023.
//

import Foundation
import UIKit
 
final class ViewModel : ObservableObject {
    @Published var text = ""
    @Published var convertedText = "$0"
    private let converters = Converters()
    
    func convertMony(){
        self.convertedText = try! converters.convertEuroToUSD(euro: text)
        self.hideKeybord()
        
    }
    
    private func hideKeybord(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

