Class {
	#name : 'TLInsightfulRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLInsightfulRuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (aWord := TLWord with: (PPToken on: 'Insightful')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLInsightfulRule new.
	
	results := aRule runOn: aDocument.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLInsightfulRuleTest >> testFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'THE')).
	words add: (aWord := TLWord with: (PPToken on: 'INSIGHTFUL')).
	words add: (TLWord with: (PPToken on: 'IS')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLInsightfulRule new.
	
	results := aRule runOn: aDocument.
	
	results := aRule runOn: aDocument.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLInsightfulRuleTest >> testFailureInSentence [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (aWord := TLWord with: (PPToken on: 'insightful')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLInsightfulRule new.
	
	results := aRule runOn: aDocument.
	
	results := aRule runOn: aDocument.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLInsightfulRuleTest >> testSuccess [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLInsightfulRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
