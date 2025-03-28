Class {
	#name : 'TLParagraphTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'test' }
TLParagraphTest >> testCreation [

	| aParagraph |

	aParagraph := TLParagraph withAll: (OrderedCollection with: (TLWord with: 2)).
	self assert: aParagraph sentences size = 1.
	self assert: aParagraph sentences first text = 2
]

{ #category : 'test' }
TLParagraphTest >> testEmptyInterval [

	| aParagraph words aSentence anotherSentence sentences |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1' start: 1stop: 1 )).
	words add: (TLWord with: (PPToken on: '2' start: 2stop: 2 )).
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence with: (TLWhitespace with: (PPToken on: ' ' start: 3 stop: 3 )).
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph interval size = 3
]

{ #category : 'test' }
TLParagraphTest >> testInterval [

	| aParagraph words aSentence sentences |

	words := OrderedCollection new.
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph interval size = 0
]

{ #category : 'test' }
TLParagraphTest >> testIsParagraph [

	| aParagraph |

	aParagraph := TLParagraph withAll: 1.
	self assert: aParagraph isParagraph.
	self deny: aParagraph isDocument.
	self deny: aParagraph isSentence.
	self deny: aParagraph isWord.
	self deny: aParagraph isPunctuation.
	self deny: aParagraph isEndOfDocument.
	self deny: aParagraph isWhitespace.
	self deny: aParagraph isPhrase.
]

{ #category : 'test' }
TLParagraphTest >> testSentences [

	| aParagraph words aSentence anotherSentence sentences |

	aParagraph := TLParagraph withAll: (OrderedCollection with: (TLWord with: '2')).
	self assert: aParagraph sentences size = 1.
	self assert: aParagraph sentences first text = '2'.
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence with: (TLWhitespace with: (PPToken on: ' ')).
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph sentences size = 1.
	self assert: aParagraph sentences first text = '12'.
]

{ #category : 'test' }
TLParagraphTest >> testText [

	| aParagraph words aSentence anotherSentence sentences |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence with: (TLWhitespace with: (PPToken on: ' ')).
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph text = '12 '
]

{ #category : 'test' }
TLParagraphTest >> testWords [

	| aParagraph words aSentence anotherSentence sentences |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.

	self assert: aParagraph words size = 1.
	self assert: aParagraph words first text = '2'.
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.	
	sentences := OrderedCollection with: aSentence with: (TLWhitespace with: (PPToken on: ' ')).
	aParagraph := TLParagraph withAll: sentences.
	self assert: aParagraph words size = 2.
	self assert: aParagraph words first text = '1'.
	self assert: aParagraph words last text = '2'.
]
