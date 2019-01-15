//
//  ViewController.swift
//  CarouselDemo
//
//  Created by Nayem on 1/15/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: SWInflateLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addAndSetupCollectionView()
    }
    
    private func addAndSetupCollectionView() {
        // collection view addition
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        collectionView.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor).isActive = true
        collectionView.heightAnchor.constraint(equalTo: collectionView.widthAnchor, multiplier: 1.0).isActive = true
        
        // collection view setup
        collectionView.registerReusableCell(VideoCell.self)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .white
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.showsVerticalScrollIndicator = false
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
}

extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = VideoCell.dequeue(fromCollectionView: collectionView, atIndexPath: indexPath)
        cell.titleLabel.text = "Item: \(indexPath.row + 1)"
        return cell
    }
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width - 100
        let height = width
        return CGSize(width: width, height: height)
    }
}
