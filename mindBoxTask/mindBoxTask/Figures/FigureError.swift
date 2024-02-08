//
//  FigureError.swift
//  mindBoxTask
//
//  Created by Семен Гайдамакин on 08.02.2024.
//

enum FigureError: String, Error {
    case invalidSides = "Параметр фигуры не может быть меньше или равен 0"
    case figureIsNotExist = "Такой фигуры не существует"
    
    enum Triangle: String, Error {
        case wrongSum = "Сумма любых двух сторон должна быть больше третьей стороны"
        case wrongRaznost = "Разность длин двух сторон должна быть меньше третьей стороны"
    }
}
