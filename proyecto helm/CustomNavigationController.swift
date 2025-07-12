//
//  CustomNavigationController.swift
//  proyecto helm
//
//  Created by Azael García Candela on 30/06/25.
//

import UIKit

class CustomNavigationController: UINavigationController {

    override var shouldAutorotate: Bool{
        return topViewController?.shouldAutorotate ?? false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return topViewController?.supportedInterfaceOrientations ?? .all
    }

}
