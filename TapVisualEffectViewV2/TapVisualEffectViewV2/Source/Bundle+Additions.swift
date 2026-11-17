//
//  Bundle+Additions.swift
//  TapVisualEffectView
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
import TapAdditionsKitV2

internal extension Bundle {
    
    // MARK: - Internal -
    // MARK: Properties
    
    static let visualEffectViewResourcesBundle: Bundle = {
        
        #if SWIFT_PACKAGE
        // Swift Package Manager puts the xib and images in the package's own resource bundle.
        return Bundle.module
        #else
        guard let result = Bundle(for: TapVisualEffectView.self).tap_childBundle(named: Constants.visualEffectViewResourcesBundleName) else {
			
            fatalError("There is no \(Constants.visualEffectViewResourcesBundleName) bundle.")
        }
        
        return result
        #endif
    }()
    
    // MARK: - Private -
    
    private struct Constants {
        
        fileprivate static let visualEffectViewResourcesBundleName = "TapVisualEffectViewResources"
    }
}
