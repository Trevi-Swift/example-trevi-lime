//
//  AppDelegate.swift
//  LimeExample
//
//  Created by SeungHyunLee on 3/11/16.
//  Copyright © 2016 Trevi Foundation. All rights reserved.
//

import Cocoa
import Trevi
import Lime

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        
        let server = Http ()
        
        let lime = Lime()
        
        lime.set("views", "\(__dirname)/views")
        
        lime.set("view engine", SwiftServerPage())
        
        lime.use(Logger(format: "default"))
        
        lime.use(Favicon())
        
        lime.use(ServeStatic(path: "\(__dirname)/public"))
        
        lime.use("/", Root())
        
        lime.use { (req, res, next) in
            res.statusCode = 404
            res.send("404 error")
        }
        
        server.createServer(lime).listen(8080)
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

