//
//  StatusMenuController.swift
//  ILostTheGame
//
//  Created by Brendan Goodenough on 12/05/18.
//  Copyright © 2018 Brendan Goodenough. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)

    override func awakeFromNib() {
        let icon = NSImage(imageLiteralResourceName: "statusIcon")

        statusItem.title = "I Lost The Game"
        statusItem.menu = statusMenu
        statusItem.image = icon
    }

    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }
}
