//
//  CircleTests.swift
//  mindBoxTaskTests
//
//  Created by Семен Гайдамакин on 08.02.2024.
//

import XCTest
@testable import mindBoxTask

final class CircleTests: XCTestCase {
    
    // Тест для проверки инициализации круга с неправильными значениями радиуса
    func testCircleInitializationWithInvalidRadius() {
        let invalidCircle1 = Circle(radius: -5)
        XCTAssertNil(invalidCircle1, "Круг с отрицательным радиусом должен инициализироваться как nil")
       
        let invalidCircle2 = Circle(radius: 0)
        XCTAssertNil(invalidCircle2, "Круг с нулевым радиусом должен инициализироваться как nil")
    }
    
    // Тест для проверки инициализации круга с правильным значениями радиуса
    func testObjectValid() {
        let circle = Circle(radius: 2)
        XCTAssertNotNil(circle)
    }
    
    // Тест для проверки корректности расчета площади круга
    func testCalculateCircleArea() {
        let circle = Circle(radius: 5)!
        XCTAssertEqual(circle.area(), Double.pi * 5 * 5)
    }
}
