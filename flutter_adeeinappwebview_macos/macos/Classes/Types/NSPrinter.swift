//
//  NSPrinter.swift
//  flutter_adeeinappwebview
//
//  Created by Lorenzo Pichilli on 17/10/22.
//

import Foundation

extension NSPrinter {
    public func toMap () -> [String:Any?] {
        return [
            "type": type.rawValue,
            "languageLevel": languageLevel,
            "name": name
        ]
    }
}
