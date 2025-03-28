Class {
	#name : 'TLPhraseTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'test' }
TLPhraseTest >> testCreation [

	| aPhrase |
	
	aPhrase := TLPhrase withAll: 1.
	self assert: aPhrase children = 1
]

{ #category : 'test' }
TLPhraseTest >> testEmptyInterval [

	| aPhrase words|
	
	words := OrderedCollection new.
	aPhrase := TLPhrase withAll: words.
	self assert: aPhrase interval size = 0
]

{ #category : 'test' }
TLPhraseTest >> testInterval [

	| aPhrase words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1' start: 1 stop: 1 )).
	words add: (TLWhitespace with: (PPToken on: ' ' start: 2 stop: 2 )).
	words add: (TLWord with: (PPToken on: '2' start: 3 stop: 3 )).
	aPhrase := TLPhrase withAll: words.
	self assert: aPhrase interval size = 3
]

{ #category : 'test' }
TLPhraseTest >> testIsPhrase [
	| aParagraph |

	aParagraph := TLPhrase withAll: 1.
	self assert: aParagraph isPhrase.
	self deny: aParagraph isDocument.
	self deny: aParagraph isSentence.
	self deny: aParagraph isWord.
	self deny: aParagraph isPunctuation.
	self deny: aParagraph isEndOfDocument.
	self deny: aParagraph isWhitespace.
	self deny: aParagraph isParagraph.
]

{ #category : 'test' }
TLPhraseTest >> testPhraseWithoutMarkups [

	| aPhrase tokens|
	
	tokens := OrderedCollection new.
	tokens add: (TLWord with: (PPToken on: '1')).
	tokens add: (TLWord with: (PPToken on: '2')).
	tokens add: (TLWhitespace with: (PPToken on: ' ')).
	tokens add: (TLMarkup with: (PPToken on: '\emph ')).
	aPhrase := TLPhrase withAll: tokens.
	self assert: aPhrase phraseWithoutMarkups isPhrase.
	self assert: aPhrase phraseWithoutMarkups children size = 3.
	self assert: aPhrase phraseWithoutMarkups children first text = '1'.
	self assert: aPhrase phraseWithoutMarkups children second text = '2'.
	self assert: aPhrase phraseWithoutMarkups children last isWhitespace.
]

{ #category : 'test' }
TLPhraseTest >> testText [

	| aPhrase words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aPhrase := TLPhrase withAll: words.
	self assert: aPhrase text = '12'
]

{ #category : 'test' }
TLPhraseTest >> testTextWithSyntacticElements [

	| aPhrase words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: '2')).
	aPhrase := TLPhrase withAll: words.
	self assert: aPhrase text = '1 2'
]

{ #category : 'test' }
TLPhraseTest >> testWords [

	| aPhrase tokens|
	
	tokens := OrderedCollection new.
	tokens add: (TLWord with: (PPToken on: '1')).
	tokens add: (TLWord with: (PPToken on: '2')).
	tokens add: (TLWhitespace with: (PPToken on: ' ')).
	aPhrase := TLPhrase withAll: tokens.
	self assert: aPhrase words size = 2.
	self assert: aPhrase words first text = '1'.
	self assert: aPhrase words last text = '2'.
]
