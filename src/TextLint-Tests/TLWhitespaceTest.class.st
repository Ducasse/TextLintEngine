Class {
	#name : 'TLWhitespaceTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'test' }
TLWhitespaceTest >> testCreation [

	| aToken |

	aToken := TLWhitespace with: 1.
	
	self assert: aToken text = 1
]

{ #category : 'test' }
TLWhitespaceTest >> testInterval [

	| aToken |

	aToken := TLWhitespace with: (PPToken on: ' ' start: 1 stop: 1) .
	
	self assert: aToken interval size = 1
]

{ #category : 'test' }
TLWhitespaceTest >> testIsEndOfParagraph [
	| aToken aWhitespace |
	aToken := PPToken
		on: 'ab
	'
		start: 1
		stop: 3.
	aWhitespace := TLWhitespace with: aToken.
	self deny: aWhitespace isEndOfParagraph.
	
	aToken := PPToken
		on: 'ab

cd'
		start: 1
		stop: 6.
	aWhitespace := TLWhitespace with: aToken.
	self assert: aWhitespace isEndOfParagraph
]

{ #category : 'test' }
TLWhitespaceTest >> testIsWhitespace [

	| aToken |

	aToken := TLWhitespace with: 1.

	self assert: aToken isWhitespace.
	self assert: aToken isSyntacticElement.
	self deny: aToken isParagraph.
	self deny: aToken isDocument.
	self deny: aToken isSentence.
	self deny: aToken isWord.
	self deny: aToken isPunctuation.
	self deny: aToken isEndOfDocument.
	self deny: aToken isPhrase.
]

{ #category : 'test' }
TLWhitespaceTest >> testPrintstring [

	| aToken |

	aToken := TLWhitespace with: (PPToken on: 'abc') .
	
	"Checks that 'abc' is included in the printString "
	self assert: (aToken printString indexOfSubCollection: 'abc') > 0
]

{ #category : 'test' }
TLWhitespaceTest >> testText [

	| aToken |

	aToken := TLWhitespace with: (PPToken on: '1') .
	
	self assert: aToken text = '1'
]
