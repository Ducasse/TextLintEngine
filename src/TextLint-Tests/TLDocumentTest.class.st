Class {
	#name : 'TLDocumentTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'test' }
TLDocumentTest >> testAllElements [

	| aDocument words aSentence aParagraph sentences paragraphs|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: '4')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	
	aDocument := TLDocument withAll: paragraphs.
	self assert: aDocument allElements size = 7.
	self assert: (aDocument allElements includes: aDocument).
	self assert: (aDocument allElements includes: aParagraph).
	self assert: (aDocument allElements includes: aSentence).
	self assert: (aDocument allElements includes: words first).
	self assert: (aDocument allElements includes: words second).
	self assert: (aDocument allElements includes: words third).
	self assert: (aDocument allElements includes: words fourth).
]

{ #category : 'test' }
TLDocumentTest >> testCreation [

	| aDocument |
	
	aDocument := TLDocument withAll: 1.
	self assert: aDocument paragraphs = 1
]

{ #category : 'test' }
TLDocumentTest >> testEmptyInterval [

	| aDocument words aSentence aParagraph sentences paragraphs|
	
	words := OrderedCollection new.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	
	aDocument := TLDocument withAll: paragraphs.
	self assert: aDocument interval size = 0
]

{ #category : 'test' }
TLDocumentTest >> testInterval [

	| aDocument words aSentence aParagraph sentences paragraphs|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1' start: 1 stop: 1 )).
	words add: (TLWord with: (PPToken on: '2' start: 2 stop: 2 )).
	words add: (TLWord with: (PPToken on: '3' start: 3 stop: 3 )).
	words add: (TLWord with: (PPToken on: '4' start: 4 stop: 4 )).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	
	aDocument := TLDocument withAll: paragraphs.
	self assert: aDocument interval size = 4
	
]

{ #category : 'test' }
TLDocumentTest >> testIsDocument [

	| aDocument |
	
	aDocument := TLDocument withAll: 1.
	self assert: aDocument isDocument.
	self deny: aDocument isParagraph.
	self deny: aDocument isSentence.
	self deny: aDocument isWord.
	self deny: aDocument isPunctuation.
	self deny: aDocument isEndOfDocument.
	self deny: aDocument isWhitespace.
	self deny: aDocument isPhrase.
]

{ #category : 'test' }
TLDocumentTest >> testSentences [

	| aDocument words aSentence aParagraph sentences paragraphs|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: '4')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	
	aDocument := TLDocument withAll: paragraphs.
	self assert: aDocument sentences size = 1.
	self assert: aDocument sentences first = aSentence
]

{ #category : 'test' }
TLDocumentTest >> testText [

	| aDocument words aSentence aParagraph sentences paragraphs|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: '4')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	
	aDocument := TLDocument withAll: paragraphs.
	self assert: aDocument text = '1234'
]

{ #category : 'test' }
TLDocumentTest >> testWords [

	| aDocument words aSentence aParagraph sentences paragraphs|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: '4')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	
	aDocument := TLDocument withAll: paragraphs.
	self assert: aDocument words size = 4.
	self assert: ( (aDocument words asArray at: 1) text = '1' ).
	self assert: ( (aDocument words asArray at: 2) text = '2' ).
	self assert: ( (aDocument words asArray at: 3) text = '3' ).
	self assert: ( (aDocument words asArray at: 4) text = '4' ).
]
