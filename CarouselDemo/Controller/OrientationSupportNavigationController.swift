//
//  OrientationSupportNavigationController.swift
//  CarouselDemo
//
//  Created by Nayem on 1/16/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit

class OrientationSupportNavigationController: UINavigationController {
    
    private var activeViewController: UIViewController? {
        return self.presentedViewController ?? self.topViewController   // for possible modal support
    }
    
    override var shouldAutorotate: Bool {
        return activeViewController?.shouldAutorotate ?? super.shouldAutorotate
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return activeViewController?.supportedInterfaceOrientations ?? super.supportedInterfaceOrientations
    }

}
