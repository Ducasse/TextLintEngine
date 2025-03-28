Class {
	#name : 'TLSentenceTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Parser',
	#package : 'TextLint-Tests',
	#tag : 'Parser'
}

{ #category : 'accessing' }
TLSentenceTest class >> packageNamesUnderTest [
	^ #('TextLint-Model')
]

{ #category : 'test' }
TLSentenceTest >> testAllPhrasesOfSize [

	| aSentence words phrases |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: '4')).
	words add: (TLWord with: (PPToken on: '5')).
	aSentence := TLSentence withAll: words.
	phrases := aSentence allPhrasesOfSize: 3.
	self assert: phrases size = 3.
	self assert: phrases first text = '123'.
	self assert: phrases second text = '234'.
	self assert: phrases last text = '345'.
]

{ #category : 'test' }
TLSentenceTest >> testAllPhrasesOfSizeOne [

	| aSentence words phrases aWord |
	
	words := OrderedCollection new.
	words add: (aWord := TLWord with: (PPToken on: '1')).
	aSentence := TLSentence withAll: words.
	phrases := aSentence allPhrasesOfSize: 1.
	self assert: phrases size = 1.
	self assert: phrases first words size = 1.
	self assert: phrases first words first = aWord.
]

{ #category : 'test' }
TLSentenceTest >> testAllSequencesOfSize [

	| aSentence words phrases |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: '4')).
	words add: (TLWord with: (PPToken on: '5')).
	aSentence := TLSentence withAll: words.
	phrases := aSentence allSequencesOfSize: 3.
	self assert: phrases size = 3.
	self assert: phrases first text = '123'.
	self assert: phrases second text = '234'.
	self assert: phrases last text = '345'.
]

{ #category : 'test' }
TLSentenceTest >> testAllSequencesOfSizeOne [

	| aSentence words phrases aWord |
	
	words := OrderedCollection new.
	words add: (aWord := TLWord with: (PPToken on: '1')).
	aSentence := TLSentence withAll: words.
	phrases := aSentence allSequencesOfSize: 1.
	self assert: phrases size = 1.
	self assert: phrases first words size = 1.
	self assert: phrases first words first = aWord.
]

{ #category : 'test' }
TLSentenceTest >> testContainsPhraseAtTheBeginning [

	| aSentence words|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: 'xxxx')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: '1 2 3')
]

{ #category : 'test' }
TLSentenceTest >> testContainsPhraseAtTheEnd [

	| aSentence words|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'xxxx')).
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: '1 2 3')
]

{ #category : 'test' }
TLSentenceTest >> testContainsPhraseAtTheMiddle [

	| aSentence words|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'xxxx')).
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	words add: (TLWord with: (PPToken on: '3')).
	words add: (TLWord with: (PPToken on: 'xxxx')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: '1 2 3')
]

{ #category : 'test' }
TLSentenceTest >> testContainsPhraseInAnyCase [

	| aSentence words|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'xxxx')).
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWord with: (PPToken on: 'b')).
	words add: (TLWord with: (PPToken on: 'c')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: 'A B C').
	
	words add: (TLWord with: (PPToken on: 'xxxx')).
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWord with: (PPToken on: 'b')).
	words add: (TLWord with: (PPToken on: 'c')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: 'a b c').
	
	words add: (TLWord with: (PPToken on: 'xxxx')).
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWord with: (PPToken on: 'B')).
	words add: (TLWord with: (PPToken on: 'c')).
	aSentence := TLSentence withAll: words.
	
	self assert: (aSentence containsPhrase: 'A B c')
]

{ #category : 'test' }
TLSentenceTest >> testCreation [

	| aSentence |
	
	aSentence := TLSentence withAll: 1.
	self assert: aSentence children = 1
]

{ #category : 'test' }
TLSentenceTest >> testEmptyInterval [

	| aSentence words|
	
	words := OrderedCollection new.
	aSentence := TLSentence withAll: words.
	self assert: aSentence interval size = 0
]

{ #category : 'test' }
TLSentenceTest >> testInterval [

	| aSentence words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1' start: 1 stop: 1)).
	words add: (TLWord with: (PPToken on: '2' start: 2 stop: 2)).
	words add: (TLWhitespace with: (PPToken on: ' ' start: 3 stop: 3)).
	aSentence := TLSentence withAll: words.
	self assert: aSentence interval size = 3
]

{ #category : 'test' }
TLSentenceTest >> testIsSentence [

	| aSentence |
	
	aSentence := TLSentence withAll: 1.

	self assert: aSentence isSentence.
	self deny: aSentence isParagraph.
	self deny: aSentence isDocument.
	self deny: aSentence isWord.
	self deny: aSentence isPunctuation.
	self deny: aSentence isEndOfDocument.
	self deny: aSentence isWhitespace.
	self deny: aSentence isPhrase.
]

{ #category : 'test' }
TLSentenceTest >> testText [

	| aSentence tokens|
	
	tokens := OrderedCollection new.
	tokens add: (TLWord with: (PPToken on: '1')).
	tokens add: (TLWord with: (PPToken on: '2')).
	tokens add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: tokens.
	self assert: aSentence text = '12 '
]

{ #category : 'test' }
TLSentenceTest >> testWords [

	| aSentence tokens|
	
	tokens := OrderedCollection new.
	tokens add: (TLWord with: (PPToken on: '1')).
	tokens add: (TLWord with: (PPToken on: '2')).
	tokens add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: tokens.
	self assert: aSentence words size = 2.
	self assert: aSentence words first text = '1'.
	self assert: aSentence words last text = '2'.
]

{ #category : 'test' }
TLSentenceTest >> testWordsAsString [

	| aSentence words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: '1')).
	words add: (TLWord with: (PPToken on: '2')).
	aSentence := TLSentence withAll: words.
	self assert: aSentence wordsAsString = ' 1 2'
]

{ #category : 'test' }
TLSentenceTest >> testWordsAsStringRealText [

	| aSentence words|
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'a')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	aSentence := TLSentence withAll: words.
	self assert: aSentence wordsAsString = ' test a lot that'
]
