//
//  DataViewController.swift
//  AmbientGenerator
//
//  Created by Keenan Piveral-Brooks on 2/17/19.
//  Copyright © 2019 Keenan Piveral-Brooks. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

	@IBOutlet weak var dataLabel: UILabel!
	var dataObject: String = ""


	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		self.dataLabel!.text = dataObject
	}


}

