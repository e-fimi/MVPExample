//
//  ViewController.swift
//  MVPExample
//
//  Created by Георгий on 17.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var tickerLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBAction func buttonPressed(_ sender: Any) {
        self.viewOutputDelegate?.getRandomCount()
    }
    
    private var testData : [Crypto] = []
    private var count = 0
    
    private let presenter = Presenter()
    weak private var viewOutputDelegate: ViewOutputDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.setViewInputDelegate(viewInputDelegate: self)
        self.viewOutputDelegate = presenter
        self.viewOutputDelegate?.getData()
    }
}

extension ViewController: ViewInputDelegate {
    func setupInitialState() {
        displayData(index: count)
    }
    
    func setupData(with testData: [Crypto]) {
        self.testData = testData
    }
    
    func displayData(index: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[index].name
            tickerLabel.text = testData[index].ticker
            valueLabel.text = String (testData[index].value)
        } else {
            print("No data")
        }
    }
    
}
