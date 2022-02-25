//
//  PersonTests.swift
//  UnitTestingAppTests
//
//  Created by Igor on 10.12.2021.
//

import XCTest
@testable import UnitTestingApp // Импорт модуля, в котором расположен тестируемый класс

class PersonTests: XCTestCase {
    var person: Person?

    override func setUp()  {
        super.setUp()
        person = Person(name: "Foo", surname: "Bar")
    }

    override func tearDown()  {
        person = nil
        super.tearDown()
    }
    
    func testInitPersonModelWithNameAndSurname() {
        XCTAssertNotNil(person)
    }
    
    func testInitPersonModelWithOptionalNubmer() {
        XCTAssertNotNil(person)
    }
    
    func testWhinGivenNameAndSurnameSetInNameAndSurnamePropertiesOfClass() {
        XCTAssertTrue(person?.name == "Foo")
        XCTAssertEqual(person?.surname, "Bar")
    }
    
    func testWhenGivenNumberInOptionalProperyOfClass() {
        person = Person(name: "Foo", surname: "Bar", number: "Baz")
        
        XCTAssertTrue(person?.number == "Baz")
    }
    
    func testInitPersonWithImage() {
        let image = UIImage(systemName: "person.fill")
        let data = image?.pngData()

        let person = Person(name: "Foo", surname: "Bar", image: data)
        
        XCTAssertNotNil(person.image)
    }
}
