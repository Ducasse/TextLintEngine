Class {
	#name : 'TLOneOfTheMostRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLOneOfTheMostRuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'One')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'of')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word3 := words add: (TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word4 := words add: (TLWord with: (PPToken on: 'most')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLOneOfTheMostRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third= word3.
	self assert: results first element words fourth = word4.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLOneOfTheMostRuleTest >> testFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	word1 := words add: (TLWord with: (PPToken on: 'ONE')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'OF')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word3 := words add: (TLWord with: (PPToken on: 'THE')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word4 := words add: (TLWord with: (PPToken on: 'MOST')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLOneOfTheMostRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third= word3.
	self assert: results first element words fourth = word4.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLOneOfTheMostRuleTest >> testFailureInSentence [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 word4 |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word1 := words add: (TLWord with: (PPToken on: 'One')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word2 := words add: (TLWord with: (PPToken on: 'of')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word3 := words add: (TLWord with: (PPToken on: 'the')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	word4 := words add: (TLWord with: (PPToken on: 'most')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLOneOfTheMostRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first element words third= word3.
	self assert: results first element words fourth = word4.
	self assert: results first rule = aRule.
	
]

{ #category : 'test' }
TLOneOfTheMostRuleTest >> testSuccess [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'A')).
	words add: (TLWord with: (PPToken on: 'of')).
	words add: (TLWord with: (PPToken on: 'the')).
	words add: (TLWord with: (PPToken on: 'most')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLOneOfTheMostRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
