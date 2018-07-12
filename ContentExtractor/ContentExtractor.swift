//
//  ContentExtractor.swift
//  ContentExtractor
//
//  Created by Pawel Kowalczuk on 12/07/2018.
//  Copyright © 2018 Pawel Kowalczuk. All rights reserved.
//

import Foundation

class ContentExtractor {

    lazy var paragraph1: NSRegularExpression? = {
        return try? NSRegularExpression(pattern: "(<p>)(.+?)(</p>)",
                                        options: .caseInsensitive)
    }()

    lazy var paragraph2: NSRegularExpression? = {
        return try? NSRegularExpression(pattern: "(<p )(.+?)(</p>)",
                                        options: .caseInsensitive)
    }()

    lazy var style: NSRegularExpression? = {
        return try? NSRegularExpression(pattern: "(<style)(.+?)(</style>)",
                                        options: .caseInsensitive)
    }()

    lazy var script: NSRegularExpression? = {
        return try? NSRegularExpression(pattern: "(<script)(.+?)(</script>)",
                                        options: .caseInsensitive)
    }()

    lazy var htmlTag: NSRegularExpression? = {
        return try? NSRegularExpression(pattern: "<[^>]+>",
                                        options: .caseInsensitive)
    }()

    func extract(from inputContent: String,
                 maxMatches: Int = 10,
                 logTime: Bool = false) -> String {
        var result = ""

        let startTime = Date()

        let content = clearNewLines(from: inputContent)

        let bodyS = content.range(of: "<body")
        let bodyE = content.range(of: "</body>")

        if let bodyS = bodyS, let bodyE = bodyE {
            let body = String(content[bodyS.lowerBound..<bodyE.upperBound])
            var paragraphs = matches(exp: paragraph1, in: body)
            if paragraphs.isEmpty {
                paragraphs = matches(exp: paragraph2, in: body)
            }

            let ranges = paragraphs.map({ $0.range.lowerBound..<$0.range.upperBound })
            let allowedMatches = min(maxMatches, ranges.count)
            result = body.subString(with: Array(ranges[0..<allowedMatches]))
            result = removeOccurences(exp: style, from: result)
            result = removeOccurences(exp: script, from: result)
            result = removeOccurences(exp: htmlTag, from: result)
        }

        if logTime {
            print("⏱ EXTRACTING TOOK \(fabs(startTime.timeIntervalSinceNow))")
        }

        return result
    }

    private func removeOccurences(exp: NSRegularExpression?,
                                  from content: String) -> String {
        guard let exp = exp else { return content }

        let expMatches = matches(exp: exp, in: content)

        var tmp = ""
        var start = content.startIndex
        for m in expMatches {
            let r = m.range.lowerBound..<m.range.upperBound
            let s = content.index(content.startIndex, offsetBy: r.lowerBound)
            let e = content.index(content.startIndex, offsetBy: r.upperBound)
            tmp += String(content[start..<s])
            start = e
        }

        return expMatches.isEmpty ? content : tmp
    }

    private func matches(exp: NSRegularExpression?,
                         in content: String) -> [NSTextCheckingResult] {
        guard let exp = exp else { return [] }
        return exp.matches(in: content,
                           options: .reportCompletion,
                           range: NSRange(location: 0, length: content.count))
    }

    private func clearNewLines(from content: String) -> String {
        return content.replacingOccurrences(of: "\n", with: "")
    }
}
