//
//  ViewController.swift
//  typist
//
//  Created by mizushi on 2018/08/16.
//  Copyright 2018 mizushi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet weak var ar: NSTextField!
    var cnt = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        NSEvent.addGlobalMonitorForEvents(matching: NSEvent.EventTypeMask.keyDown, handler: keyDown);
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    override func keyDown(with event: NSEvent){
        cnt = cnt + 1
        ar.stringValue = String(cnt)

    }

}

