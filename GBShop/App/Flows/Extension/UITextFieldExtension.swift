//
//  UITextFieldExtension.swift
//  GBShop
//
//  Created by Сергей Зайцев on 09.01.2022.
//

import UIKit

extension UITextField {
    func leadingTextPadding(_ width: CGFloat) {
        let paddingView = UIView(
            frame: CGRect(x: 0, y: 0, width: width, height: self.frame.size.height)
        )
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func trailingTextPadding(_ width: CGFloat) {
        let paddingView = UIView(
            frame: CGRect(x: 0, y: 0, width: width, height: self.frame.size.height)
        )
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
