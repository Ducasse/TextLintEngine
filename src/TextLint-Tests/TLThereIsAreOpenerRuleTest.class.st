Class {
	#name : 'TLThereIsAreOpenerRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLThereIsAreOpenerRuleTest >> testThereAreFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2|

	words := OrderedCollection new.
	words add: (word1 := (TLWord with: (PPToken on: 'There'))).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: ( word2 := TLWord with: (PPToken on: 'are')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThereIsAreOpenerRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLThereIsAreOpenerRuleTest >> testThereAreFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2|

	words := OrderedCollection new.
	words add: (word1 := (TLWord with: (PPToken on: 'THERE'))).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: ( word2 := TLWord with: (PPToken on: 'ARE')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThereIsAreOpenerRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLThereIsAreOpenerRuleTest >> testThereAreSuccess [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := (TLWord with: (PPToken on: 'There'))).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: ( word2 := TLWord with: (PPToken on: 'are')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThereIsAreOpenerRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty

	
]

{ #category : 'test' }
TLThereIsAreOpenerRuleTest >> testThereIsFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2|

	words := OrderedCollection new.
	words add: (word1 := (TLWord with: (PPToken on: 'There'))).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: ( word2 := TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThereIsAreOpenerRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLThereIsAreOpenerRuleTest >> testThereIsFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2|

	words := OrderedCollection new.
	words add: (word1 := (TLWord with: (PPToken on: 'THERE'))).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: ( word2 := TLWord with: (PPToken on: 'IS')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThereIsAreOpenerRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first = word1.
	self assert: results first element words last = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLThereIsAreOpenerRuleTest >> testThereIsSuccess [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word1 := (TLWord with: (PPToken on: 'There'))).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: ( word2 := TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThereIsAreOpenerRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results isEmpty

	
]
