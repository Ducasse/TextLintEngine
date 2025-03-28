Class {
	#name : 'TLConnectorRepetitionInParagraphRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testFailureFurthermore [
	|  words word1 word2 aSentence sentences aParagraph paragraphs aDocument aRule results |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'furthermore')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'furthermore')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first element = word1.
	self assert: results second element = word2.

	


	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testFailureHowever [
	|  words word1 word2 aSentence sentences aParagraph paragraphs aDocument aRule results |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'however')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'however')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first element = word1.
	self assert: results second element = word2.

	


	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testFailureInAddition [
	|  words word1 word2 aSentence sentences aParagraph paragraphs aDocument aRule results word3 word4 |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'addition')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'addition')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words second = word2.
	
	self assert: results second element isPhrase.
	self assert: results second element words first = word3.
	self assert: results second element words second = word4.
	

	


	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testFailureInContrastTo [
	|  words word1 word2 aSentence sentences aParagraph paragraphs aDocument aRule results word3 word4 word5 word6 |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'contrast')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'to')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'in')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'contrast')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'to')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	
	self assert: results second element isPhrase.
	self assert: results second element words first = word4.
	self assert: results second element words second = word5.
	self assert: results second element words third = word6.
	

	


	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testFailureNevertheless [
	|  words word1 word2 aSentence sentences aParagraph paragraphs aDocument aRule results |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'nevertheless')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'nevertheless')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first element  = word1.
	self assert: results second element = word2.

	


	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testFailureOnTheOtherHand [
	|  words word1 word2 aSentence sentences aParagraph paragraphs aDocument aRule results word3 word4 word5 word6 word7 word8 |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'on')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word3 := TLWord with: (PPToken on: 'other')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word4 := TLWord with: (PPToken on: 'hand')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word5 := TLWord with: (PPToken on: 'on')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word6 := TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word7 := TLWord with: (PPToken on: 'other')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word8 := TLWord with: (PPToken on: 'hand')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words second = word2.
	self assert: results first element words third = word3.
	self assert: results first element words fourth = word4.
	
	self assert: results second element isPhrase.
	self assert: results second element words first = word5.
	self assert: results second element words second = word6.
	self assert: results second element words third = word7.
	self assert: results second element words fourth = word8.
	

	


	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testFailureStill [
	|  words word1 word2 aSentence sentences aParagraph paragraphs aDocument aRule results |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'still')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'still')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 2.
	self assert: results first element = word1.
	self assert: results second element = word2.

	


	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testFailureTwoParagraph [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph anotherParagraph paragraphs results word1 word2 word3 word4 word5 word6 |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'however')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'however')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	words := OrderedCollection new.
	words add: (word4 := TLWord with: (PPToken on: 'however')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word5 := TLWord with: (PPToken on: 'however')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	anotherParagraph := TLParagraph withAll: sentences.
	
	paragraphs := OrderedCollection with: aParagraph with: anotherParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 4.
	self assert: results first element = word1.
	self assert: results second element = word2.
	self assert: results third element = word4.
	self assert: results fourth element = word5.
	


	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testSuccess [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testSuccessDueToInvalidWord [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |
	
	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (word2 := TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.




	
]

{ #category : 'test' }
TLConnectorRepetitionInParagraphRuleTest >> testSuccessInTwoParagraphs [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph anotherParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test1')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'lot')).
	words add: (TLWord with: (PPToken on: 'test1')).
	words add: (TLWord with: (PPToken on: 'test1')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	anotherParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph with: anotherParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLConnectorRepetitionInParagraphRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty.	

	
]
