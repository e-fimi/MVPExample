//
//  Crypto.swift
//  MVPExample
//
//  Created by Георгий on 17.10.2021.
//

import Foundation

struct Crypto {
    var name: String
    var ticker: String
    var value: Int
}

extension Crypto {
    static var testData = [
        Crypto(name: "Bitcoin", ticker: "BTC", value: 55000),
        Crypto(name: "Etherium", ticker: "ETH", value: 3500),
        Crypto(name: "Ripple", ticker: "XRP", value: 589),
        Crypto(name: "Stellar", ticker: "XLM", value: 20),
        Crypto(name: "Algorand", ticker: "ALGO", value: 3),
    ]
}
