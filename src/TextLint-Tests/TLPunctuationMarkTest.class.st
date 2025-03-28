Class {
	#name : 'TLPunctuationMarkTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'test' }
TLPunctuationMarkTest >> testCreation [

	| aToken |

	aToken := TLPunctuationMark with: 1.
	
	self assert: aToken text = 1
]

{ #category : 'test' }
TLPunctuationMarkTest >> testInterval [

	| aToken |

	aToken := TLPunctuationMark with: (PPToken on: '.' start: 1 stop: 1) .
	
	self assert: aToken interval size = 1
]

{ #category : 'test' }
TLPunctuationMarkTest >> testIsEndOfSentence [

	| aToken |

	aToken := TLPunctuationMark with: (PPToken on: '.').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: ';').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: ':').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: '!').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: '?').
	self assert: aToken isEndOfSentence.
	
	aToken := TLPunctuationMark with: (PPToken on: ',').
	self deny: aToken isEndOfSentence.
]

{ #category : 'test' }
TLPunctuationMarkTest >> testIsPunctuation [

	| aToken |

	aToken := TLPunctuationMark with: 1.

	self assert: aToken isPunctuation.
	self assert: aToken isSyntacticElement.
	self deny: aToken isParagraph.
	self deny: aToken isDocument.
	self deny: aToken isSentence.
	self deny: aToken isWord.
	self deny: aToken isEndOfDocument.
	self deny: aToken isWhitespace.
	self deny: aToken isPhrase.
]

{ #category : 'test' }
TLPunctuationMarkTest >> testText [

	| aToken |

	aToken := TLPunctuationMark with: (PPToken on: '1') .
	
	self assert: aToken text = '1'
]
