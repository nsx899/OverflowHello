//
//  ServiceItem.swift
//  OverflowHello
//
//  Created by Kiss János on 05/12/2023.
//

import Foundation

struct ServiceItem: Identifiable {
    let id = UUID()
    let number: String
    let name: String
    let description: String
    let image: String
}
