//
//  SecCertificate.swift
//  flutter_adeeinappwebview
//
//  Created by Lorenzo Pichilli on 19/02/21.
//

import Foundation

extension SecCertificate {
    var data: Data {
        let serverCertificateCFData = SecCertificateCopyData(self)
        return serverCertificateCFData as Data
    }
}
