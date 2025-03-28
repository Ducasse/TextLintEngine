Class {
	#name : 'TLTextLintRule',
	#superclass : 'Object',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLTextLintRule class >> allRules [
	^ self subclasses isEmpty
		ifTrue: [ Array with: self new ]
		ifFalse: [ self subclasses gather: [ :each | each allRules ] ]
]

{ #category : 'accessing' }
TLTextLintRule >> name [
	^ self subclassResponsibility 
]

{ #category : 'accessing' }
TLTextLintRule >> rationale [
	^ self subclassResponsibility
]

{ #category : 'running' }
TLTextLintRule >> runOn: aDocument [ 
	^ OrderedCollection new
		addAll: (self runOnDocument: aDocument);
		addAll: (self runOnParagraphsIn: aDocument);
		addAll: (self runOnSentencesIn: aDocument);
		addAll: (self runOnWordsIn: aDocument);
		yourself
]

{ #category : 'running' }
TLTextLintRule >> runOnDocument: aDocument [ 
	^ #()
]

{ #category : 'running' }
TLTextLintRule >> runOnParagraph: aParagraph [
	^ #()
]

{ #category : 'running' }
TLTextLintRule >> runOnParagraphsIn: aDocument [ 
	^ aDocument paragraphs gather: [ :each | self runOnParagraph: each ]
]

{ #category : 'running' }
TLTextLintRule >> runOnSentence: aSentence [
	^ #()
]

{ #category : 'running' }
TLTextLintRule >> runOnSentencesIn: aDocument [ 
	^ aDocument sentences gather: [ :each | self runOnSentence: each ]
]

{ #category : 'running' }
TLTextLintRule >> runOnWord: aWord [
	^ #()
]

{ #category : 'running' }
TLTextLintRule >> runOnWordsIn: aDocument [ 
	^ aDocument words gather: [ :each | self runOnWord: each ]
]
