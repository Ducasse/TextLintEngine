Class {
	#name : 'TLSoCalledRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLSoCalledRuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2  |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'So')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'Called')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLSoCalledRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLSoCalledRuleTest >> testFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'SO')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'CALLED')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'TO')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLSoCalledRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLSoCalledRuleTest >> testFailureInSentence [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2  |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (word1 := TLWord with: (PPToken on: 'so')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (word2 := TLWord with: (PPToken on: 'called')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLSoCalledRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 2.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLSoCalledRuleTest >> testSuccess [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'on')).
	words add: (TLWord with: (PPToken on: 'order')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLSoCalledRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
