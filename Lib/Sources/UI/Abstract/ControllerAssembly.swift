//
//  ControllerAssembly.swift
//  Lib
//
//  Created by Volodymyr Shlikhta on 5/9/18.
//  Copyright © 2018 Volodymyr Shlikhta. All rights reserved.
//

import Foundation

public protocol ControllerAssembly {
    associatedtype View
    
    var view: View { get }
}
