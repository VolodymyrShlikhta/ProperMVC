//
//  ViewController.swift
//  ProperMVC
//
//  Created by Volodymyr Shlikhta on 4/9/18.
//  Copyright © 2018 Volodymyr Shlikhta. All rights reserved.
//

import UIKit

public class ViewController<View, Model, Assembly>: UIViewController, RootViewGettable
    where
    Model: Lib.Model,
    View: RootView<Model.PresentationModel>,
    Assembly: ControllerAssembly,
    Assembly.View: View
{
    
    // MARK: - Subtypes
    
    public typealias RootViewType = View
    
    // MARK: - Properties
    
    public let model: Model
    public let assembly: Assembly
    
    // MARK: - Init and Deinit
   
    public init(model: Model, assembly: Assembly) {
        self.model = model
        self.assembly = assembly
        
        super.init(nibName: nil, bundle: nil)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // MARK: - View lifecycle
    
    public override func loadView() {
        self.view = assembly.view
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
}
