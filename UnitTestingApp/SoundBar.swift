//
//  SoundBar.swift
//  UnitTestingApp
//
//  Created by Igor on 07.12.2021.
//

class SoundBar {
    private(set) var volume = 0
    
    // set volume by user
    func setVolume(to value: Int) {
        
        // Программное ограничение 0...100
        volume = min(max(value, 0), 100)
    }
}
