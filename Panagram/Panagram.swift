//
//  Panagram.swift
//  Panagram
//
//  Created by Laureane Clark on 7/29/17.
//  Copyright © 2017 Laureane Clark. All rights reserved.
//

import Foundation

enum OptionType: String {
    case palindrome = "p"
    case anagram = "a"
    case help = "h"
    case unknown
    
    init(value: String) {
        switch value {
            case "a": self = .anagram
            case "p": self = .palindrome
            case "h": self = .help
            default: self = .unknown
        }
    }
}

class Panagram {
    
    let consoleID = ConsoleID()

    
    func getOption(_option: String) -> (option:OptionType, value: String) {
        return (OptionType(value: option), option)
    }

    
    func staticMode() {
        //1
        let argCount = CommandLine.argc
        //2
        let argument = CommandLine.arguments[1]
        //3 I made a edit on this line, check later for error
        let (option, value) = getOption(_option: argument.substring(from: argument.index(argument.startIndex, offsetBy: 1)))
        //4 I made a edit on this line, check later for error
        consoleID.writeMessage(_message: "Argument count: \(argCount) Option: \(option) value: \(value)")
    }
    

    
}
