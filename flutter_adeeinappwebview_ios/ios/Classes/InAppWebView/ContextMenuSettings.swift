//
//  ContextMenuOptions.swift
//  flutter_adeeinappwebview
//
//  Created by Lorenzo Pichilli on 30/05/2020.
//

import Foundation

public class ContextMenuSettings: ISettings<NSObject> {
    
    var hideDefaultSystemContextMenuItems = false;

    override init(){
        super.init()
    }
}
