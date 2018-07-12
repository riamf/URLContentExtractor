//
//  String+Utils.swift
//  ContentExtractor
//
//  Created by Pawel Kowalczuk on 12/07/2018.
//  Copyright © 2018 Pawel Kowalczuk. All rights reserved.
//

import Foundation

extension String {
    subscript (bounds: CountableClosedRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }

    subscript (bounds: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }

    subscript (bounds: Range<Int>) -> String {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start..<end])
    }

    func subString(with ranges: [CountableRange<Int>]) -> String {
        guard !ranges.isEmpty else {
            return self
        }
        var tmp = ""
        for r in ranges {
            tmp += self[r]
        }

        return tmp
    }
}
