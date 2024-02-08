//
//  Circle.swift
//  mindBoxTask
//
//  Created by Семен Гайдамакин on 08.02.2024.
//

// Круг
final class Circle: Figure {
    
    private let radius: Double

    init?(radius: Double) {
        // Проверка, что радуиус больше 0
        guard radius > 0 else {
            print("Ошибка при инициализации круга: \(FigureError.invalidSides.rawValue)")
            return nil
        }
        self.radius = radius
    }
    
    func area() -> Double {
        return Double.pi * radius * radius
    }
}
