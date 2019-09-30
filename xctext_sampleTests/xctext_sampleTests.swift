//
//  xctext_sampleTests.swift
//  xctext_sampleTests
//
//  Created by yhonda on 2019/09/30.
//  Copyright © 2019 yhonda. All rights reserved.
//

import XCTest
@testable import xctext_sample

class xctext_sampleTests: XCTestCase {

    let sampleLogic = SampleLogic()
    
    override func setUp() {}

    override func tearDown() {}

    // 税込価格計算のテストコード
    func testTaxIncludedPrice() {
        
        // 税込価格計算結果
        let price = sampleLogic.taxIncludedPrice(price: 100)
        
        // 期待値と等しいことを確認
        XCTAssertEqual(price, 108) // Success!!
        XCTAssertEqual(price, 100) // Failure...
        
        // 期待値と等しくないことを確認
        XCTAssertNotEqual(price, 108) // Failure...
        XCTAssertNotEqual(price, 100) // Success!!
    }
    
    // iPhone11 Pro の背面パーツに存在するか確認メソッドのテストコード
    func testIPhone11ProBackParts() {
        
        // パーツはカメラ
        let trueParts = sampleLogic.iPhone11ProBackParts(parts: "カメラ")
        // パーツはタピオカ
        let falseParts = sampleLogic.iPhone11ProBackParts(parts: "タピオカ")
        
        // 期待値が真だと確認するAPI
        XCTAssertTrue(trueParts) // Success!!
        XCTAssertTrue(falseParts) // Failure...
        
        // 期待値が偽だと確認するAPI
        XCTAssertFalse(trueParts) // Failure...
        XCTAssertFalse(falseParts) // Success!!
    }
    
    // iPhone11 Pro に存在する色があれば画像を返すメソッドのテストコード
    func testIPhone11ProImage() {
        
        // MidnightGreenのiPhone画像
        let midnightGreenImage = sampleLogic.iPhone11ProImage(color: "midnight-green")
        // RainbowのiPhone画像
        let rainbowImage = sampleLogic.iPhone11ProImage(color: "rainbow")
        
        // 期待値がNilなことを確認するAPI
        XCTAssertNil(midnightGreenImage) // Failure...
        XCTAssertNil(rainbowImage) // Success!!
        
        // 期待値がNilでないことを確認するAPI
        XCTAssertNotNil(midnightGreenImage) // Success!!
        XCTAssertNotNil(rainbowImage) // Failure...
    }
}
