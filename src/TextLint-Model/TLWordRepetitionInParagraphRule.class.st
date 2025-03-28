Class {
	#name : 'TLWordRepetitionInParagraphRule',
	#superclass : 'TLTextLintRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLWordRepetitionInParagraphRule >> name [
	^ 'Avoid word repetition'
]

{ #category : 'accessing' }
TLWordRepetitionInParagraphRule >> rationale [
	^ 'The constant repetition of the same words in a paragraph is weakening.'
]

{ #category : 'running' }
TLWordRepetitionInParagraphRule >> runOnParagraph: aParagraph [ 
	| counts results |
	counts := Bag new.
	aParagraph words
		do: [ :word | counts add: word text ].
	results := OrderedCollection new.
	aParagraph words do: [ :word | 
		self wordRepetitionLimit < (counts occurrencesOf: word text)
			ifTrue: [ results add: word ] ].
	^ results
]

{ #category : 'accessing' }
TLWordRepetitionInParagraphRule >> wordRepetitionLimit [
	^2
]
