//
//  TriangleTests.swift
//  mindBoxTaskTests
//
//  Created by Семен Гайдамакин on 08.02.2024.
//

import XCTest
@testable import mindBoxTask

final class TriangleTests: XCTestCase {
    
    // Тест для инициализации треугольника с правильными сторонами
     func testTriangleInitializationWithValidSides() {
         let triangle = Triangle(sideA: 3.0, sideB: 4.0, sideC: 5.0)
         XCTAssertNotNil(triangle)
     }
     
     // Тест для инициализации треугольника с некорректными сторонами (сумма двух сторон меньше третьей)
     func testTriangleInitializationWithInvalidSumOfSides() {
         let invalidTriangle = Triangle(sideA: 1.0, sideB: 1.0, sideC: 10.0)
         XCTAssertNil(invalidTriangle, "Треугольник с такими сторонами не может существовать и должен инициализироваться как nil")
     }
     
     // Тест для инициализации треугольника с отрицательными сторонами
     func testTriangleInitializationWithInvaliвSides() {
         let invalidTriangle = Triangle(sideA: -3.0, sideB: 4.0, sideC: 5.0)
         XCTAssertNil(invalidTriangle, "Треугольник с отрицательными сторонами не может существовать и должен инициализироваться как nil")
     }
    
    // Тест для проверки инициализации треугольника с неправильными значениями сторон
    func testTriangleInitializationWithZeroSides() {
        let invalidTriangle = Triangle(sideA: 0, sideB: 4.0, sideC: 5.0)
        XCTAssertNil(invalidTriangle, "Треугольник с нулевой сторой не может существовать и должен инициализироваться как nil")
    }
    
    // Тест для вычисления площади треугольника
    func testCalculateTriangleArea() {
        let triangle = Triangle(sideA: 3.0, sideB: 4.0, sideC: 5.0)!
        XCTAssertEqual(triangle.area(), 6.0)
    }
    
    // Тест для проверки прямоугольного треугольника
    func testIsRightAngledTriangle() {
        let rightAngledTriangle = Triangle(sideA: 3.0, sideB: 4.0, sideC: 5.0)!
        XCTAssertTrue(rightAngledTriangle.isRightAngled)
    }

    // Тест для проверки не прямоугольного треугольника
    func testIsNotRightAngledTriangle() {
        let notRightAngledTriangle = Triangle(sideA: 3.0, sideB: 4.0, sideC: 6.0)!
        XCTAssertFalse(notRightAngledTriangle.isRightAngled)
    }

}


