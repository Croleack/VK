//
//  HeaderView.swift
//  myVk
//
//  Created by Enzhe Gaysina on 08.08.2023.
//

import UIKit

class HeaderView: UIView {

    static func instantiate() -> HeaderView {
        let view: HeaderView = initFromNib()
        return view
    }

}

//пишем расширения для класса UIView
extension UIView {
    
    class func initFromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?[0] as! T
    }
}
