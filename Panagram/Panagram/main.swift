//
//  main.swift
//  Panagram
//
//  Created by Laureane Clark on 7/29/17.
//  Copyright © 2017 Laureane Clark. All rights reserved.
//

import Foundation

let panagram = Panagram()
if CommandLine.argc < 2 {
    //TODO: Insert Handle Interactive Mode
} else {
    panagram.staticMode()
}

