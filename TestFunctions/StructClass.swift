//
//  StructClass.swift
//  TestFunctions
//
//  Created by Suresh R on 08/01/18.
//  Copyright © 2018 Tringapps Inc. All rights reserved.
//

struct Photo: Codable {
    let name: String
    let url: String
    let size: Size
}
struct Size: Codable {
    let width: Double
    let height: Double
}


