//
//  ViewController.swift
//  MyStoreApp
//
//  Created by Эл on 07.10.2022.
//

import UIKit

/// Main Menu where we can manage all our data

final class SearchViewController: UIViewController {
    
    // MARK: - Private properties

    private var searchViews = SearchViews()

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: - Private Methods
    private func setupUI() {
        view.addSubview(searchViews.searchLabel)
        view.addSubview(searchViews.appleCareLable)
        view.addSubview(searchViews.appleCareImageView)
        view.addSubview(searchViews.beatsLable)
        view.addSubview(searchViews.clearButton)
        view.addSubview(searchViews.requestsHistory)
        view.addSubview(searchViews.caseViewOne)
        view.addSubview(searchViews.caseViewTwo)
        view.addSubview(searchViews.searchBar)
        view.addSubview(searchViews.recentlyViewedLabel)
        view.addSubview(searchViews.airPodsLable)
        view.addSubview(searchViews.airPodsImageView)
        view.addSubview(searchViews.iPhoneLable)
        view.addSubview(searchViews.iPhoneImageView)
        view.addSubview(searchViews.beatsImageView)
        view.addSubview(searchViews.caseViewThree)
        searchViews.caseViewOne.addSubview(searchViews.caseViewOneLable)
        searchViews.caseViewTwo.addSubview(searchViews.caseViewTwoImageView)
        searchViews.caseViewThree.addSubview(searchViews.caseViewThreeLable)
        searchViews.caseViewOne.addSubview(searchViews.caseViewOneImageView)
        searchViews.caseViewTwo.addSubview(searchViews.caseViewTwoLable)
        searchViews.caseViewThree.addSubview(searchViews.caseViewThreeImageView)
        recognizeGesture()
    }

    private func recognizeGesture() {
        searchViews.caseViewOne.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapAction)))
        searchViews.caseViewOne.tag = 1
        searchViews.caseViewTwo.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapAction)))
        searchViews.caseViewTwo.tag = 2
        searchViews.caseViewThree.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapAction)))
        searchViews.caseViewThree.tag = 3
    }

    // MARK: - Objc Methods
    @objc private func tapAction(param: UIGestureRecognizer) {
        let productsViewController = ProductsViewController()
        switch param.view?.tag {
        case 1:
            productsViewController.productsNames = "Чехол Incase Flat для MacBook Pro 16 дюймов"
            productsViewController.productsImages = UIImage(named: "Image")
        case 2:
            productsViewController.productsNames = "Cпортивный ремешок Black Unity"
            productsViewController.productsImages = UIImage(named: "4")
        case 3:
            productsViewController.productsNames = "Кожаный чехол для MacBook Pro 16 дюймов"
            productsViewController.productsImages = UIImage(named: "2")
        default:
            break
        }
        navigationController?.pushViewController(productsViewController, animated: false)
    }
}
