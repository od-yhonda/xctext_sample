//
//  SampleLogic.swift
//  xctext_sample
//
//  Created by yhonda on 2019/09/30.
//  Copyright © 2019 yhonda. All rights reserved.
//

import UIKit

/// XCTest用サンプルロジック
class SampleLogic {
    
    // 税込価格計算のメソッド
    func taxIncludedPrice(price: Double) -> Double {
        return price * 1.08
    }
    
    // iPhone11 Pro の背面パーツに存在するか確認メソッド
    func iPhone11ProBackParts(parts: String) -> Bool {
        return parts == "カメラ" ? true : false
    }
    
    // iPhone11 Pro に存在する色があれば画像を返す
    func iPhone11ProImage(color: String) -> UIImage? {
        let colors = ["space", "silver", "midnight-green", "gold"]
        return colors.contains(color) ? UIImage(named: color) : nil
    }
}
