Class {
	#name : 'TLTerminatorMarkTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'test' }
TLTerminatorMarkTest >> testCreation [

	| aToken |

	aToken := TLTerminatorMark with: 1.
	
	self assert: aToken text = 1
]

{ #category : 'test' }
TLTerminatorMarkTest >> testInterval [

	| aToken |

	aToken := TLTerminatorMark with: (PPToken on: '.' start: 1 stop: 1) .
	
	self assert: aToken interval size = 1
]

{ #category : 'test' }
TLTerminatorMarkTest >> testIsEndOfDocument [

	| aToken |

	aToken := TLTerminatorMark with: 1.

	self assert: aToken isEndOfDocument.
	self assert: aToken isSyntacticElement.
	self deny: aToken isParagraph.
	self deny: aToken isDocument.
	self deny: aToken isSentence.
	self deny: aToken isWord.
	self deny: aToken isPunctuation.
	self deny: aToken isWhitespace.
	self deny: aToken isPhrase.
]

{ #category : 'test' }
TLTerminatorMarkTest >> testText [

	| aToken |

	aToken := TLTerminatorMark with: (PPToken on: '1') .
	
	self assert: aToken text = '1'
]
