//
//  RootViewGettable.swift
//  Lib
//
//  Created by Volodymyr Shlikhta on 5/9/18.
//  Copyright © 2018 Volodymyr Shlikhta. All rights reserved.
//

import UIKit

public protocol RootViewGettable {
    associatedtype RootViewType: UIView
    
    var viewIfLoaded: UIView? { get }
    var rootView: RootViewType? { get }
}

public extension RootViewGettable {
    
    public var rootView: RootViewGettable? {
        return self.viewIfLoaded.flatMap(cast)
    }
}
