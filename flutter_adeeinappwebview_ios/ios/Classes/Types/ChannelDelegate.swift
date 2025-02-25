//
//  ChannelDelegate.swift
//  flutter_adeeinappwebview
//
//  Created by Lorenzo Pichilli on 04/05/22.
//

import Foundation

public class ChannelDelegate : FlutterMethodCallDelegate, Disposable {
    var channel: FlutterMethodChannel?
    
    public init(channel: FlutterMethodChannel) {
        super.init()
        self.channel = channel
        self.channel?.setMethodCallHandler(handle)
    }
    
    public override func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        
    }
    
    public func dispose() {
        channel?.setMethodCallHandler(nil)
        channel = nil
    }
}
