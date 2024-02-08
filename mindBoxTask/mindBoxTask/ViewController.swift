//
//  ViewController.swift
//  mindBoxTask
//
//  Created by Семен Гайдамакин on 08.02.2024.
//

import UIKit

//MARK:  Все, касаемо фигур, лежит в папке "Figures"
//MARK:  Тесты в папке "Unit_tests"

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let cirle, let triangle {
            print("Площадь круга: \(cirle.area())")
            print("Площадь треугольника: \(triangle.area()), прямоугольный?: \(triangle.isRightAngled.description)")
            
            if #available(iOS 16.0, *) {
                print(ContinuousClock().measure { triangle.isRightAngled })
            } else {
                // Fallback on earlier versions
            }
        }
        
        if let wrongCirle, let wrongTriangle {
            print("Площадь круга: \(wrongCirle.area())")
            print("Площадь треугольника: \(wrongTriangle.area())")
        }
        
        print(calculateArea(of: cirle).area)
    }

    let cirle = Circle(radius: 3)
    let triangle = Triangle(sideA: 3, sideB: 4, sideC: 5)
    
    let wrongCirle = Circle(radius: 0)
    let wrongTriangle = Triangle(sideA: 0, sideB: -4, sideC: 5)

}
