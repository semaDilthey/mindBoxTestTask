//
//  Triangle.swift
//  mindBoxTask
//
//  Created by Семен Гайдамакин on 08.02.2024.
//

import Foundation

// Треугольник
final class Triangle: Figure {
    
    private let sideA: Double
    private let sideB: Double
    private let sideC: Double

    // failable init свою функцию выполяет, но в зависимости от требований заказчика можно сделать throwing init
    init?(sideA: Double, sideB: Double, sideC: Double) {
        // Проверка, что сумма любых двух сторон больше третьей стороны
        guard sideA + sideB > sideC && sideA + sideC > sideB && sideB + sideC > sideA  else {
            print("Ошибка при инициализации треугольника: \(FigureError.Triangle.wrongSum.rawValue)")
            return nil
        }
        // Проверка, что разность длин двух сторон меньше третьей стороны
        guard  sideA - sideB < sideC && sideA - sideC < sideB && sideB - sideC < sideA else {
            print("Ошибка при инициализации треугольника: \(FigureError.Triangle.wrongRaznost.rawValue)")
            return nil
        }
        // Проверка, что каждая сторона больше 0
        guard sideA > 0, sideB > 0, sideC > 0 else {
            print("Ошибка при инициализации треугольника: \(FigureError.invalidSides.rawValue)")
                return nil
        }
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
    
    lazy var isRightAngled: Bool = {
        // Можно было бы проверять так:
        // sideA * sideA == sideB * sideB + sideC * sideC ||
        // sideB * sideB == sideA * sideA + sideC * sideC ||
        // sideC * sideC == sideA * sideA + sideB * sideB
        // Но поскольку массив состоит из всего 3 элементов, то это не сыграет разницы
        let arr = [sideA, sideB, sideC].sorted()
        return arr[2]*arr[2] == arr[1]*arr[1]+arr[0]*arr[0]
    }()

    func area() -> Double {
        let semiPerimetr = (sideA + sideB + sideC) / 2
        let firstSide = semiPerimetr - sideA
        let secondSide = semiPerimetr - sideB
        let thirdSide = semiPerimetr - sideC
        let result = sqrt(semiPerimetr*firstSide*secondSide*thirdSide)
        return result
    }
}
