//
//  ConsoleIO.swift
//  Panagram
//
//  Created by Laureane Clark on 7/29/17.
//  Copyright © 2017 Laureane Clark. All rights reserved.
//

import Foundation

enum OutputType {
    case error
    case standard
}

class ConsoleID {
    
    func writeMessage(_message: String, to: OutputType = .standard) {
        switch to {
        case.standard:
            print("\(_message)\n")
        case.error:
            fputs("Error: \(_message)\n", stderr)
        }
    }
    
    func printUsage() {
        
        let executableName = (CommandLine.arguments[0] as NSString).lastPathComponent
        
        writeMessage(_message: "usage:")
        writeMessage(_message: "\(executableName) -a string1 string2")
        writeMessage(_message: "or")
        writeMessage(_message: "\(executableName) -p string")
        writeMessage(_message: "or")
        writeMessage(_message: "\(executableName) -h to show usage information")
        writeMessage(_message: "Type \(executableName) without an option to enter interactive mode.")
    }
    
}

    

