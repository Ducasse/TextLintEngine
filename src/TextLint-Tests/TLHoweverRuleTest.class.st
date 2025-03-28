Class {
	#name : 'TLHoweverRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLHoweverRuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'However').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLHoweverRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first element isPhrase.
	self assert: results first element size = 1.
	self assert: results first element children first = aWord.
	self assert: results first rule = aRule
]

{ #category : 'test' }
TLHoweverRuleTest >> testFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'HowEvEr').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLHoweverRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first element isPhrase.
	self assert: results first element size = 1.
	self assert: results first element children first = aWord.
	self assert: results first rule = aRule
	
]

{ #category : 'test' }
TLHoweverRuleTest >> testSuccess [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	aWord := TLWord with: (PPToken on: 'test').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLHoweverRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
