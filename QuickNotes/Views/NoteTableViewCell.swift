//
//  NoteTableViewCell.swift
//  QuickNotes
//
//  Created by Marlon Raskin on 6/5/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit
//Steps for delagate
//1. Create a protocol
//2. weak var delagate of protocol type
//3. Call delegate method in IBAction
//4. Assign the delegate

protocol NoteTableViewCellDelegate: class {
	func shareNote(for cell: NoteTableViewCell)
}

class NoteTableViewCell: UITableViewCell {

	// MARK: - Properties and Outlets
	@IBOutlet var noteLabel: UILabel!
	weak var delegate: NoteTableViewCellDelegate?
	
	var note: Note? {
		didSet {
			updateViews()
		}
	}
	
	// MARK: - IBActions
	@IBAction func shareButtonTapped(_ sender: UIButton) {
		self.delegate?.shareNote(for: self)
	}
	
	private func updateViews() {
		guard let note = note else { return }
		noteLabel.text = note.text
	}
}
