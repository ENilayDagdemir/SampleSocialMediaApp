//
//  GalleryLayout.swift
//  SampleSocialMediaApp
//
//  Created by Nilay Dagdemir on 1.02.2022.
//

import UIKit

protocol GalleryLayoutDelegate: AnyObject {
  func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat
}

class GalleryLayout: UICollectionViewLayout {
  weak var delegate: GalleryLayoutDelegate?
  private var layoutAttributesCache: [UICollectionViewLayoutAttributes] = []
  private let numberOfColumns = 2
  private let cellPadding: CGFloat = 7
  private var contentHeight: CGFloat = 0
  private var contentWidth: CGFloat {
    guard let collectionView = collectionView else { return 0 }
    let insets = collectionView.contentInset
    return collectionView.bounds.width - (insets.left + insets.right)
  }
  override var collectionViewContentSize: CGSize {
    CGSize(width: contentWidth, height: contentHeight)
  }

  override func prepare() {
    guard layoutAttributesCache.isEmpty == true,
          let collectionView = collectionView else { return }
    let columnWidth = contentWidth / CGFloat(numberOfColumns)
    var xOffset: [CGFloat] = []
    for column in 0..<numberOfColumns {
      xOffset.append(CGFloat(column) * columnWidth)
    }
    var column = 0
    var yOffset: [CGFloat] = .init(repeating: 0, count: numberOfColumns)
    for item in 0..<collectionView.numberOfItems(inSection: 0) {
      let indexPath = IndexPath(item: item, section: 0)
      let photoHeight = delegate?.collectionView(collectionView,
                                                 heightForPhotoAtIndexPath: indexPath) ?? 180
      let height = cellPadding * 2 + photoHeight
      let frame = CGRect(x: xOffset[column],
                         y: yOffset[column],
                         width: columnWidth,
                         height: height)
      let insetFrame = frame.insetBy(dx: cellPadding, dy: cellPadding)
      let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
      attributes.frame = insetFrame
      layoutAttributesCache.append(attributes)
      contentHeight = max(contentHeight, frame.maxY)
      yOffset[column] = yOffset[column] + height
      column = column < (numberOfColumns - 1) ? (column + 1) : 0
    }
  }

  override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
    var visibleLayoutAttributes: [UICollectionViewLayoutAttributes] = []
    for attributes in layoutAttributesCache {
        if attributes.frame.intersects(rect) {
            visibleLayoutAttributes.append(attributes)
        }
    }
    return visibleLayoutAttributes
  }

  override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
      layoutAttributesCache[indexPath.item]
  }
}
