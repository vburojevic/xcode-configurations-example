//
//  ViewController.swift
//  XcodeConfigurations
//
//  Created by Vedran Burojevic on 19/04/2017.
//  Copyright © 2017 Infinum. All rights reserved.
//

import UIKit
import Alamofire
import Unbox

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		// Do any additional setup after loading the view, typically from a nib.
		
		Alamofire.request("https://httpbin.org/get").responseJSON { response in
			print("RESULT: \(response.result)")
			
			if let JSON = response.result.value {
				print("JSON: \(JSON)")
			}
		}
	}
	
}

