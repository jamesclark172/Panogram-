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
    
    let consoleIO = ConsoleIO()
  
    func getOption(_ option: String) -> (option:OptionType, value: String) {
        return (OptionType(value: option), option)
    }

    
    func staticMode() {
        //1
        let argCount = CommandLine.argc
        //2
        let argument = CommandLine.arguments[1]
        //3
        let (option, value) = getOption(argument.substring(from: argument.index(argument.startIndex, offsetBy: 1)))
        //4 
      switch option {
      case .anagram:
        
        if argCount != 4 {
          if argCount > 4 {
            consoleIO.writeMessage("Too many arguments for option \(option.rawValue)", to: .error)
          } else {
            consoleIO.writeMessage("Too few arguments for option \(option.rawValue)", to: .error)
          }
          consoleIO.printUsage()
        } else {
          
          let first = CommandLine.arguments[2]
          let second = CommandLine.arguments[3]
          
          if first.isAnagramOf(second) {
            consoleIO.writeMessage("\(second) is an anagram of \(first)")
          } else {
            consoleIO.writeMessage("\(second) is not an anagram of \(first)")
          }
        }
      case .palindrome:
        
        if argCount != 3 {
          if argCount > 3 {
            consoleIO.writeMessage("Too many arguments for option \(option.rawValue)", to: .error)
          } else {
            consoleIO.writeMessage("Too few arguments for option \(option.rawValue)", to: .error)
          }
          consoleIO.printUsage()
        } else {
          
          let s = CommandLine.arguments[2]
          let isPalindrome = s.isPalindrome()
          consoleIO.writeMessage("\(s) is \(isPalindrome ? "" : "not ")a palindrome")
        }
        
      case .help:
        consoleIO.printUsage()
      case .unknown:
        
        consoleIO.writeMessage("Unknown option \(value)")
        consoleIO.printUsage()
      }
      
    }
  
}
