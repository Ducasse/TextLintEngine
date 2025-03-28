Class {
	#name : 'TLTextLintChecker',
	#superclass : 'Object',
	#instVars : [
		'rules',
		'document',
		'results'
	],
	#category : 'TextLint-Model-Runner',
	#package : 'TextLint-Model',
	#tag : 'Runner'
}

{ #category : 'accessing' }
TLTextLintChecker >> addRule: aRule [ 
	rules add: aRule
]

{ #category : 'accessing' }
TLTextLintChecker >> addStyle: aStyle [
	aStyle rules do: [ :each | self addRule: each ]
]

{ #category : 'mocking' }
TLTextLintChecker >> checkDocument: aDocument [ 
	|results |
	results := OrderedCollection new.
	rules do: [:each | results addAll: (each runOnDocument: aDocument)].
	^results


]

{ #category : 'mocking' }
TLTextLintChecker >> checkParagraph: aParagraph [ 
	| results |
	results := OrderedCollection new.
	rules do: [:each | results addAll: (each runOnParagraph: aParagraph)].
	^results


]

{ #category : 'mocking' }
TLTextLintChecker >> checkSentence: aSentence [ 
	^ rules gather: [ :each | each runOnSentence: aSentence ]
]

{ #category : 'mocking' }
TLTextLintChecker >> checkWord: aWord [ 
	| results |
	results := OrderedCollection new.
	rules do: [:each | results addAll: (each runOnWord: aWord)].
	^results


]

{ #category : 'accessing' }
TLTextLintChecker >> document [ 
	^  document
]

{ #category : 'initializing' }
TLTextLintChecker >> initialize [
	rules := OrderedCollection new
]

{ #category : 'public' }
TLTextLintChecker >> parse: aString [
	self parse: aString tokenizer: (TLPlainTokenizer find: aString)
]

{ #category : 'public' }
TLTextLintChecker >> parse: aString tokenizer: aTokenizer [
	document := TLTextPhraser parse: (aTokenizer parse: aString)
]

{ #category : 'accessing' }
TLTextLintChecker >> reset [
	"Reset the results."
	
	results := nil
]

{ #category : 'accessing' }
TLTextLintChecker >> results [
	^ results ifNil: [ results := document allElements gather: [ :each | each checkWith: self ] ]
]

{ #category : 'accessing' }
TLTextLintChecker >> rules [
	^ rules
]
