//
//  File.swift
//  
//
//  Created by Alex Tran-Qui on 02/03/2022.
//

import Foundation

#if os(Linux)
extension Date {
    func formatted() -> String {
        "\(self)"
    }
}
#endif
