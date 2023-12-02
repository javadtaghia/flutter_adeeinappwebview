//
//  WebViewChannelDelegateMethods.swift
//  flutter_adeeinappwebview
//
//  Created by Lorenzo Pichilli on 08/10/22.
//

import Foundation

public enum WebViewChannelDelegateMethods: String {
    case getUrl = "getUrl"
    case getTitle = "getTitle"
    case getProgress = "getProgress"
    case loadUrl = "loadUrl"
    case postUrl = "postUrl"
    case loadData = "loadData"
    case loadFile = "loadFile"
    case evaluateJavascript = "evaluateJavascript"
    case injectJavascriptFileFromUrl = "injectJavascriptFileFromUrl"
    case injectCSSCode = "injectCSSCode"
    case injectCSSFileFromUrl = "injectCSSFileFromUrl"
    case reload = "reload"
    case goBack = "goBack"
    case canGoBack = "canGoBack"
    case goForward = "goForward"
    case canGoForward = "canGoForward"
    case goBackOrForward = "goBackOrForward"
    case canGoBackOrForward = "canGoBackOrForward"
    case stopLoading = "stopLoading"
    case isLoading = "isLoading"
    case takeScreenshot = "takeScreenshot"
    case setSettings = "setSettings"
    case getSettings = "getSettings"
    case close = "close"
    case show = "show"
    case hide = "hide"
    case isHidden = "isHidden"
    case getCopyBackForwardList = "getCopyBackForwardList"
    @available(*, deprecated, message: "Use FindInteractionController.findAll instead.")
    case findAll = "findAll"
    @available(*, deprecated, message: "Use FindInteractionController.findNext instead.")
    case findNext = "findNext"
    @available(*, deprecated, message: "Use FindInteractionController.clearMatches instead.")
    case clearMatches = "clearMatches"
    case clearCache = "clearCache"
    case scrollTo = "scrollTo"
    case scrollBy = "scrollBy"
    case pauseTimers = "pauseTimers"
    case resumeTimers = "resumeTimers"
    case printCurrentPage = "printCurrentPage"
    case getContentHeight = "getContentHeight"
    case getContentWidth = "getContentWidth"
    case reloadFromOrigin = "reloadFromOrigin"
    case getOriginalUrl = "getOriginalUrl"
    case getZoomScale = "getZoomScale"
    case hasOnlySecureContent = "hasOnlySecureContent"
    case getSelectedText = "getSelectedText"
    case getScrollX = "getScrollX"
    case getScrollY = "getScrollY"
    case getCertificate = "getCertificate"
    case addUserScript = "addUserScript"
    case removeUserScript = "removeUserScript"
    case removeUserScriptsByGroupName = "removeUserScriptsByGroupName"
    case removeAllUserScripts = "removeAllUserScripts"
    case callAsyncJavaScript = "callAsyncJavaScript"
    case createPdf = "createPdf"
    case createWebArchiveData = "createWebArchiveData"
    case saveWebArchive = "saveWebArchive"
    case isSecureContext = "isSecureContext"
    case createWebMessageChannel = "createWebMessageChannel"
    case postWebMessage = "postWebMessage"
    case addWebMessageListener = "addWebMessageListener"
    case canScrollVertically = "canScrollVertically"
    case canScrollHorizontally = "canScrollHorizontally"
    case pauseAllMediaPlayback = "pauseAllMediaPlayback"
    case setAllMediaPlaybackSuspended = "setAllMediaPlaybackSuspended"
    case closeAllMediaPresentations = "closeAllMediaPresentations"
    case requestMediaPlaybackState = "requestMediaPlaybackState"
    case getMetaThemeColor = "getMetaThemeColor"
    case isInFullscreen = "isInFullscreen"
    case getCameraCaptureState = "getCameraCaptureState"
    case setCameraCaptureState = "setCameraCaptureState"
    case getMicrophoneCaptureState = "getMicrophoneCaptureState"
    case setMicrophoneCaptureState = "setMicrophoneCaptureState"
    case loadSimulatedRequest = "loadSimulatedRequest"
}
