//
//  ViewController.swift
//  DocumentPicker
//
//  Created by Roberto Abreu on 9/9/19.
//  Copyright © 2019 homeappzz. All rights reserved.
//

import UIKit
import MobileCoreServices

class ViewController: UIViewController, UIDocumentPickerDelegate {
    
    @IBAction func openDocumentPicker(_ sender: Any) {
        let types = [String(kUTTypePDF)]
        let documentPickerViewController = UIDocumentPickerViewController(documentTypes: types, in: .import)
        documentPickerViewController.delegate = self
        present(documentPickerViewController, animated: true, completion: nil)
    }
    
    func documentPickerWasCancelled(_ controller: UIDocumentPickerViewController) {
        print("Cancelled")
    }
    
    func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentsAt urls: [URL]) {
        print("didPickDocuments at \(urls)")
    }
    
}

