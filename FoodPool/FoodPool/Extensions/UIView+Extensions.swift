//
//  UIView+Extensions.swift
//  FoodPool
//
//  Created by Ayşe Nur Bakırcı on 9.08.2021.
//

import Foundation
import UIKit

extension UIView {
    
    func fillSuperView() {
        translatesAutoresizingMaskIntoConstraints = false
        anchor(top: superview?.topAnchor, leading: superview?.leadingAnchor, bottom: superview?.bottomAnchor, trailing: superview?.trailingAnchor)
    }
    
    func anchorSizetoSize(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    func anchorCenterX(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func anchorCenterY(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func anchorSize(size: CGSize) {
        translatesAutoresizingMaskIntoConstraints = false
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
    }
    
    func addShadow(cornerRadius: CGFloat) {
        
        layer.cornerRadius = cornerRadius
        layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.2)
        layer.shadowRadius = CGFloat(10.0)
        layer.shadowOpacity = 1
    }
    
    func addBorder(cornerRadius: CGFloat) {
        
        layer.borderWidth = CGFloat(1)
        layer.borderColor = CGColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        layer.cornerRadius = cornerRadius
    }

}

