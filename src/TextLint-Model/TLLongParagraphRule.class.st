Class {
	#name : 'TLLongParagraphRule',
	#superclass : 'TLTextLintRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLLongParagraphRule >> maxSentencesPerParagraph [
	^10
]

{ #category : 'running' }
TLLongParagraphRule >> name [
	^ 'Avoid long paragraph'
]

{ #category : 'accessing' }
TLLongParagraphRule >> rationale [
	^ 'Paragraphs with more than ' , self maxSentencesPerParagraph  asString , ' sentences are too long, they should be split into multiple paragraphs.'
]

{ #category : 'running' }
TLLongParagraphRule >> runOnParagraph: aParagraph [ 
	| results |
	results := OrderedCollection new.
	(aParagraph sentences size > self maxSentencesPerParagraph ) ifTrue: [results add: (TLRuleFailure on: self at: aParagraph)].
	^results


]
