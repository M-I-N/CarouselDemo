//
//  VideoCell.swift
//  CarouselDemo
//
//  Created by Nayem on 1/16/19.
//  Copyright © 2019 Mufakkharul Islam Nayem. All rights reserved.
//

import UIKit

class VideoCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Factory Method
    
    internal static func dequeue(fromCollectionView collectionView: UICollectionView, atIndexPath indexPath: IndexPath) -> VideoCell {
        guard let cell: VideoCell = collectionView.dequeueReusableCell(indexPath: indexPath) else {
            fatalError("*** Failed to dequeue CollectionViewCell ***")
        }
        return cell
    }

}
