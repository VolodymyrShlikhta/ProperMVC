//
//  Functions.swift
//  Lib
//
//  Created by Volodymyr Shlikhta on 4/9/18.
//  Copyright © 2018 Volodymyr Shlikhta. All rights reserved.
//

import Foundation

public func cast<Value, Result>(_ value: Value) -> Result? {
    return value as? Result
}
