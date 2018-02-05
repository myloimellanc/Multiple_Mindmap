//
//  PLine.swift
//  Pensiv
//
//  Created by Myloi Mellanc on 2017. 11. 7..
//  Copyright © 2017년 MyloiMellanc. All rights reserved.
//

import Foundation
import Cocoa


class PLink : Equatable, Hashable
{
    static func ==(lhs: PLink, rhs: PLink) -> Bool {
        //return (lhs.superview == rhs.superview) && (lhs.node_1 == rhs.node_1) && (lhs.node_2 == lhs.node_2)
        return true
    }
    
    var hashValue: Int {
        get {
            return 1
        }
    }
    
    let superview : NSView
    
    let node_1 : PNode
    let node_2 : PNode
    
    
    init(view v : NSView, node_1 n1 : PNode, node_2 n2 : PNode)
    {
        superview = v
        node_1 = n1
        node_2 = n2
        
    }
    
    func draw()
    {
        superview.PDrawLink(pos_1: node_1.centerPoint, pos_2: node_2.centerPoint)
    }

    
}






