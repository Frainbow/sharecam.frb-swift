//
//  ViewController.swift
//  ShareCam
//
//  Created by martin on 2016/3/2.
//  Copyright © 2016年 Flying Rainbow. All rights reserved.
//

import UIKit
import CocoaAsyncSocket

class ViewController: UIViewController, GCDAsyncSocketDelegate {

    var mSocket: GCDAsyncSocket?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        mSocket = GCDAsyncSocket(delegate: self, delegateQueue: dispatch_get_main_queue())

        do {
            try mSocket!.connectToHost("sharecam.frb.tw", onPort: 3000)
            print("connecting")
        } catch {
            print("exception")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func socket(sock: GCDAsyncSocket!, didConnectToHost host: String!, port: UInt16) {
        print("didConnectToHost")
    }

    func socket(sock: GCDAsyncSocket!, didConnectToUrl url: NSURL!) {
        print("didConnectToUrl")
    }

    func socket(sock: GCDAsyncSocket!, didReadPartialDataOfLength partialLength: UInt, tag: Int) {
        print("didReadPartialDataOfLength")
    }

    func socket(sock: GCDAsyncSocket!, didWritePartialDataOfLength partialLength: UInt, tag: Int) {
        print("didWritePartialDataOfLength")
    }
}

