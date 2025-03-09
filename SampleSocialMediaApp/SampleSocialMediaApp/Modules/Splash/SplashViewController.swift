//
//  SplashViewController.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 28.01.2022.
//  
//

import UIKit

class SplashViewController: UIViewController, StoryboardLoadable {

    // MARK: - IBOutlets
    @IBOutlet private weak var lblTitle: UILabel!
    @IBOutlet private weak var iconImageView: UIImageView!
    @IBOutlet private weak var pageControl: UIPageControl!
    @IBOutlet private weak var btnNext: UIButton!

    // MARK: - Properties
    var presenter: ISplashPresenter?

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        pageControl.numberOfPages = 2
    }

    @IBAction private func onNextButtonPressed() {
        pageControl.currentPage == 0 ? presenter?.nextButtonPressed() : presenter?.dashboardNavigateButtonPressed()
    }
}

extension SplashViewController: ISplashView {
    func setTitle(to title: NSAttributedString) {
        lblTitle.attributedText = title
    }

    func updatePageControl() {
        pageControl.setIndicatorImage(SplashConstants.filledDotImage, forPage: pageControl.currentPage)
        let emptyPageNumber =  pageControl.currentPage == 1 ? 0 : 1
        pageControl.setIndicatorImage(SplashConstants.emptyDotImage, forPage: emptyPageNumber)
    }

    func setNextUI() {
        pageControl.currentPage = 2
        iconImageView.image = SplashConstants.secondSplashIcon
        btnNext.setImage(SplashConstants.secondButtonImage, for: .normal)
    }
}
