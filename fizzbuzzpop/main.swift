//
//  main.swift
//  fizzbuzzpop
//
//  Created by Noyan Alimov on 05/12/2021.
//

import Foundation

enum AppError : Error {
    case UnwrapOptionalError
}

func getIsDivisibleBy3(value: Int) -> Bool { value % 3 == 0 }

func getIsDivisibleBy5(value: Int) -> Bool { value % 5 == 0 }

func getIsDivisibleBy7(value: Int) -> Bool { value % 7 == 0 }

func getUserInput() throws -> Int {
    print("Please enter a number")
    let input = readLine()
    
    guard let input = input else { throw AppError.UnwrapOptionalError }
    let inputInt = Int(input)
    guard let inputInt = inputInt else { throw AppError.UnwrapOptionalError }
    
    return inputInt
}

func main() {
    do {
        let userInput = try getUserInput()
        
        let isDivisibleBy3 = getIsDivisibleBy3(value: userInput)
        let isDivisibleBy5 = getIsDivisibleBy5(value: userInput)
        let isDivisibleBy7 = getIsDivisibleBy7(value: userInput)
        
        var result = ""
        
        if (isDivisibleBy3) {
            result += "fizz"
        }
        
        if (isDivisibleBy5) {
            if (result.count > 0) {
                result += " buzz"
            } else {
                result += "buzz"
            }
        }
        
        if (isDivisibleBy7) {
            if (result.count > 0) {
                result += " pop"
            } else {
                result += "pop"
            }
        }
        
        print(result)
    } catch {
        print(error)
    }
}

main()
