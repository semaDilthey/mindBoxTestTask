//
//  Figure.swift
//  mindBoxTask
//
//  Created by Семен Гайдамакин on 08.02.2024.
//

// Протокол для любой фигуры
protocol Figure: AnyObject {
    func area() -> Double
}

//MARK: - Вычисление площади фигуры без знания типа фигуры в compile-time

func calculateArea(of figure: Figure?) -> (area: Double?, error: Error?) {
    if let figure {
        return (figure.area(), nil)
    } else {
        return (nil, FigureError.figureIsNotExist)
    }
}


