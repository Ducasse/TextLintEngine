Class {
	#name : 'TLNoCommaBeforeThatRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLNoCommaBeforeThatRuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'order')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (word2 := TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoCommaBeforeThatRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLNoCommaBeforeThatRuleTest >> testFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: (word1 := TLWord with: (PPToken on: 'ORDER')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (word2 := TLWord with: (PPToken on: 'THAT')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoCommaBeforeThatRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLNoCommaBeforeThatRuleTest >> testFailureInSentence [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results word1 word2 word3 |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (word1 := TLWord with: (PPToken on: 'order')).
	words add: (TLPunctuationMark with: (PPToken on: ',')).
	words add: (word2 := TLWord with: (PPToken on: 'that')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLNoCommaBeforeThatRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first= word1.
	self assert: results first element words second = word2.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLNoCommaBeforeThatRuleTest >> testSuccess [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'order')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLNoCommaBeforeThatRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
