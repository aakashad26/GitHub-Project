//
//  Model.swift
//  GitHub_Project
//
//  Created by Aakash Adhikari on 2/18/20.
//  Copyright © 2020 Aakash Adhikari. All rights reserved.
//

import Foundation

struct DataResponse:Decodable {
    var response:Owner
}

struct Owner:Decodable {
    var owner:[IdInfo]
}

struct IdInfo:Decodable {
    var id: String
    var image:OwnerImage
}

struct OwnerImage:Decodable {
    var avatar_url: String
    var name:UserName
}

struct UserName:Decodable {
    var full_name: String
}

