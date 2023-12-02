//
//  StringOrInt.swift
//  flutter_adeeinappwebview
//
//  Created by Lorenzo Pichilli on 21/04/22.
//

import Foundation

public protocol StringOrInt { }

extension Int: StringOrInt { }
extension String: StringOrInt { }
