//
//  UiImageSize.swift
//  ITFCP
//
//  Created by Gursharnbir Singh on 26/04/2022.
//

import UIKit

extension UIImage {
    func resized(to size: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { _ in
            withRenderingMode(.alwaysOriginal).draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
