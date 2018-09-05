//
//  Model.swift
//  Lib
//
//  Created by Volodymyr Shlikhta on 4/9/18.
//  Copyright © 2018 Volodymyr Shlikhta. All rights reserved.
//

public protocol Model {
    associatedtype ControllerModel
    associatedtype PresentationModel
    
    var controllerModel: ControllerModel { get }
    var presentationModel: PresentationModel { get }
}
