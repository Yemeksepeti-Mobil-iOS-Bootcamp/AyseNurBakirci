//
//  LoadingShowable.swift
//  FoodPool
//
//  Created by Ayşe Nur Bakırcı on 16.08.2021.
//

import UIKit

protocol LoadingShowable where Self: UIViewController {
    func showLoading()
    func hideLoading()
}

extension LoadingShowable {
    
    func showLoading() {
        LoadingView.shared.startLoading()
    }
    
    func hideLoading() {
        LoadingView.shared.hideLoading()
    }
}
