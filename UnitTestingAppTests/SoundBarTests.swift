//
//  UnitTestingAppTests.swift
//  UnitTestingAppTests
//
//  Created by Igor on 08.12.2021.
//

import XCTest
@testable import UnitTestingApp

class SoundBarTests: XCTestCase {
    var sut: SoundBar!
    
    // инициализировать объекты
    override func setUp() {
        super.setUp()
        sut = SoundBar() // Test class init
    }

    // выгрузить объекты
    override func tearDown()  {
        sut = nil // Test class deinit
        super.tearDown()
    }

    func testLowestVolumeShouldBeZero() {
        // Что дано?
        sut.setVolume(to: -1)
        
        // Что произошло?
        let volume = sut.volume
        
        // Что должно получиться?
        XCTAssert(volume == 0, "Lowest volume should be equal 0")
    }
    
    func testHighestVolumeAboveOneHundred() {
        sut.setVolume(to: 101)
        
        let volume = sut.volume
        
        XCTAssert(volume == 100, "Highest volume should be equal 100")
    }

    // Тест производительности
    func testPerformanceExample() {
        measure {
            sut.setVolume(to: 101)
        }
    }

}
