//
//  Lime.swift
//  Trevi
//
//  Created by LeeYoseob on 2015. 12. 1..
//  Copyright © 2015년 LeeYoseob. All rights reserved.
//

import Foundation
import Trevi
import Lime

public class Root{
    
    private let lime = Lime()
    private var router: Router!
    
    public init() {        
        router = lime.router
        
        router.get("/") { req , res , next in
            res.render("index.ssp", args: ["title":"Hello Trevi!"])
        }
        
        router.get("/index") { req , res , next in
            res.write("index get")
            res.end()
        }
        
        router.get("/redir") { req , res , next in
            res.redirect("http://127.0.0.1:8080/")
        }
        
        router.get("/trevi/:param1") { req , res , next in
            if let param = req.params["param"] {
                res.send(param)
            }
            next!()
        }
    }
}

extension Root: Require {
    public func export() -> Router {
        return self.router
    }
}

