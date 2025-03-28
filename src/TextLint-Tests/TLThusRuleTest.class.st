Class {
	#name : 'TLThusRuleTest',
	#superclass : 'TestCase',
	#category : 'TextLint-Tests-Rules',
	#package : 'TextLint-Tests',
	#tag : 'Rules'
}

{ #category : 'test' }
TLThusRuleTest >> testFailure [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'Thus').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThusRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first element isPhrase.
	self assert: results first element size = 1.
	self assert: results first element children first = aWord.
	self assert: results first rule = aRule
	
]

{ #category : 'test' }
TLThusRuleTest >> testFailureCaseInsensitive [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |

	aWord := TLWord with: (PPToken on: 'ThUs').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	
	aRule := TLThusRule new.
	
	results := aRule runOn: aDocument.
	
	self assert: results size = 1.
	self assert: results first element isPhrase.
	self assert: results first element size = 1.
	self assert: results first element children first = aWord.
	self assert: results first rule = aRule

	
]

{ #category : 'test' }
TLThusRuleTest >> testSuccess [

	| aRule aWord aDocument anotherWord aSentence words sentences aParagraph paragraphs results |
	
	aWord := TLWord with: (PPToken on: 'test').
	anotherWord := TLWord with: (PPToken on: 'test').
	words := OrderedCollection with: aWord with: anotherWord.
	aSentence := TLSentence withAll: words.
	sentences := OrderedCollection with: aSentence.
	aParagraph := TLParagraph withAll: sentences.
	paragraphs := OrderedCollection with: aParagraph.
	aDocument := TLDocument withAll: paragraphs.
	aRule := TLThusRule new.
	results := aRule runOn: aDocument.
	self assert: results isEmpty
]
