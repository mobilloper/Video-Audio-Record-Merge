//
//  VTCamPreviewView.swift
//  VideoMergeTest
//
//  Created by Mobilloper on 12/11/18.
//  Copyright © 2018 Mobilloper. All rights reserved.
//

import UIKit
import AVFoundation

class VTCamPreviewView: UIView {
    
    override class var layerClass: AnyClass {
        get {
            return AVCaptureVideoPreviewLayer.self
        }
    }
    
    func session() -> AVCaptureSession {
        return (self.layer as! AVCaptureVideoPreviewLayer).session!
    }
    
    func setSession(session : AVCaptureSession) -> Void {
        (self.layer as! AVCaptureVideoPreviewLayer).session = session;
    }
    
}
