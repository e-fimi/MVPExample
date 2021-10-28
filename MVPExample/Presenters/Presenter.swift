//
//  Presenter.swift
//  MVPExample
//
//  Created by Георгий on 17.10.2021.
//

import Foundation

final class Presenter {
    
    weak private var viewInputDelegate: ViewInputDelegate?
    var testData = Crypto.testData
    
    func setViewInputDelegate(viewInputDelegate: ViewInputDelegate?) {
        self.viewInputDelegate = viewInputDelegate
    }
    
    private func loadTestData() {
        self.viewInputDelegate?.setupData(with: self.testData)
    }
    
    private func random() {
        let randomCount = Int.random(in: 0..<testData.count)
        self.viewInputDelegate?.displayData(index: randomCount)
    }
}

extension Presenter: ViewOutputDelegate {
    
    func getRandomCount() {
        random()
    }
    
    func getData() {
        self.loadTestData()
        self.viewInputDelegate?.setupInitialState()
    }
    
    func saveData() {
        
    }

}
