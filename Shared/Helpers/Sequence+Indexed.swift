//
//  Sequence+Indexed.swift
//  PunchCard
//
//  Created by Mauricio Cousillas on 6/27/20.
//

import Foundation

extension Sequence {
    func indexed() -> Array<(offset: Int, element: Element)> {
        return Array(enumerated())
    }
}
