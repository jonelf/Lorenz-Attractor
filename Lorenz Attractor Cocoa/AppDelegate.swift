//
//  AppDelegate.swift
//  Lorenz Attractor Cocoa
//
//  Created by Jonas Elfström on 02/01/15.
//  Copyright (c) 2015 Jonas Elfström. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        var view = CustomView(frame:
            NSRect(x: 0, y: 0, width: 1024, height: 768))
        
        
        if let contentView = self.window.contentView as? NSView
        {
            contentView.addSubview(view)
        } else {
            // No contentView available, nothing to do
            // but maybe we shouldn't fail silently like this
            NSApplication.sharedApplication().terminate(self)            
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

