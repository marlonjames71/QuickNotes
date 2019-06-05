//
//  NoteController.swift
//  QuickNotes
//
//  Created by Marlon Raskin on 6/5/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import Foundation

class NoteController {
	private(set) var notes: [Note] = []
	
	func createNote(with text: String) {
		let note = Note(text: text)
		notes.append(note)
	}
}
