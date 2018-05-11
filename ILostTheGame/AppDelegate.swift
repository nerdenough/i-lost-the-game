//
//  AppDelegate.swift
//  ILostTheGame
//
//  Created by Brendan Goodenough on 12/05/18.
//  Copyright © 2018 Brendan Goodenough. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    @IBAction func quitClicked(_ sender: NSMenuItem) {

    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem.title = "I Lost The Game"
        statusItem.menu = statusMenu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

