Class {
	#name : 'TLAllowToRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLAllowToRuleTest >> testAllowToFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'Allow')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAllowToRule new.
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first text = 'Allow'.
	self assert: results first element words last text = 'to'.
	self assert: results first rule = aRule.
	

	
]

{ #category : 'test' }
TLAllowToRuleTest >> testAllowToFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results|

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'Allow')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'TO')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAllowToRule new.
	
	results := aRule runOn: aDocument.

	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first text = 'Allow'.
	self assert: results first element words last text = 'TO'.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLAllowToRuleTest >> testAllowToFailureInSentence [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'Allow')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAllowToRule new.
	
	results :=  aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first text = 'Allow'.
	self assert: results first element words last text = 'to'.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLAllowToRuleTest >> testAllowToSuccess [
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'allow')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLAllowToRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]

{ #category : 'test' }
TLAllowToRuleTest >> testAllowsToFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'Allows')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAllowToRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first text = 'Allows'.
	self assert: results first element words last text = 'to'.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLAllowToRuleTest >> testAllowsToFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'ALLOWS')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'TO')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAllowToRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first text = 'ALLOWS'.
	self assert: results first element words last text = 'TO'.
	self assert: results first rule = aRule.
	
]

{ #category : 'test' }
TLAllowToRuleTest >> testAllowsToFailureInSentence [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'Allows')).
	words add: (TLWhitespace with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'to')).
	words add: (TLWord with: (PPToken on: 'that')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLAllowToRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first isRuleFailure.
	self assert: results first element isPhrase.
	self assert: results first element words first text = 'Allows'.
	self assert: results first element words last text = 'to'.
	self assert: results first rule = aRule.

	
]

{ #category : 'test' }
TLAllowToRuleTest >> testAllowsToSuccess [
	
	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	words := OrderedCollection new.
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'test')).
	words add: (TLWord with: (PPToken on: 'allows')).
	words add: (TLWord with: (PPToken on: ' ')).
	words add: (TLWord with: (PPToken on: 'test')).
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLAllowToRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
