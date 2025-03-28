Class {
	#name : 'TLThingRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLThingRuleTest >> testFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'THE')).
	words add: (aWord := TLWord with: (PPToken on: 'THING')).
	words add: (TLWord with: (PPToken on: 'IS')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThingRule new.
	
	results := aRule runOn: aDocument.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.
	
]

{ #category : 'test' }
TLThingRuleTest >> testSuccess [
	
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
	aRule := TLThingRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLThingRuleTest >> testThingFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (aWord := TLWord with: (PPToken on: 'Thing')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThingRule new.
	
	results := aRule runOn: aDocument.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.
	
]

{ #category : 'test' }
TLThingRuleTest >> testThingFailureInSentence [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (aWord := TLWord with: (PPToken on: 'thing')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThingRule new.
	
	results := aRule runOn: aDocument.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.
	
]

{ #category : 'test' }
TLThingRuleTest >> testThingsFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (aWord := TLWord with: (PPToken on: 'Things')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThingRule new.
	
	results := aRule runOn: aDocument.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLThingRuleTest >> testThingsFailureInSentence [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (aWord := TLWord with: (PPToken on: 'things')).
	words add: (TLWord with: (PPToken on: 'truth')).
	words add: (TLWord with: (PPToken on: 'is')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThingRule new.
	
	results := aRule runOn: aDocument.
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words size = 1.
	self assert: results first element words first= aWord.
	self assert: results first rule = aRule.
	
]
