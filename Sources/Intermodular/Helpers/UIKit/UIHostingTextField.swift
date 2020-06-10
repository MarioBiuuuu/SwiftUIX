//
// Copyright (c) Vatsal Manot
//

#if os(iOS) || os(tvOS) || targetEnvironment(macCatalyst)

import Swift
import SwiftUI
import UIKit

public final class UIHostingTextField: UITextField {
    public var onDeleteBackward: () -> Void = { }
    
    @inlinable
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    @inlinable
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func deleteBackward() {
        super.deleteBackward()
        
        onDeleteBackward()
    }
}

#endif