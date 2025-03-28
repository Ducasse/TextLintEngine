Class {
	#name : 'TLJoinedSentencesWithCommasRule',
	#superclass : 'TLTextLintRule',
	#instVars : [
		'wordsBeforeCommaExceptions'
	],
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'initialization' }
TLJoinedSentencesWithCommasRule >> initialize [

	super initialize.
	self initializeWordsBeforeComma
]

{ #category : 'initialization' }
TLJoinedSentencesWithCommasRule >> initializeWordsBeforeComma [

	wordsBeforeCommaExceptions := OrderedCollection new
										add: 'or';
										add: 'and';
										add: 'since';
										add: 'however';
										add: 'but';
										add: 'because';
										add: 'though';
										add: 'still';
										add: 'yet';
										add: 'as';
										yourself.
]

{ #category : 'accessing' }
TLJoinedSentencesWithCommasRule >> name [
	^ 'Avoid joined sentences'
]

{ #category : 'accessing' }
TLJoinedSentencesWithCommasRule >> rationale [
	^ 'Do not join sentences with commas, instead use colons, semi-colons, dashes, or conjunctions.'
]

{ #category : 'running' }
TLJoinedSentencesWithCommasRule >> runOnSentence: aSentence [ 
	| results numberOfCommas children commaIndex wordsBeforeComma wordsAfterComma |
	results := OrderedCollection new.
	children := aSentence children.
	numberOfCommas := children inject: 0 into:  [:count :each | (each text = ',') ifTrue: [ count + 1 ] ifFalse: [ count ]].
	(numberOfCommas = 1) ifFalse: [^results].
	
	commaIndex := children indexOf: (children detect: [:each | each isPunctuation and: [each text = ',']]).
	wordsAfterComma := children select: [:each | each isWord and: [ (children indexOf: each) > commaIndex ]].
	wordsAfterComma isEmpty ifTrue: [^results].
	(self wordsBeforeComma anySatisfy: [:each | wordsAfterComma first text sameAs: each] ) ifTrue: [^results].
	
	wordsBeforeComma := children select: [:each | each isWord and: [ (children indexOf: each) < commaIndex ]].
	
	
	((wordsBeforeComma size > 4) and: [wordsAfterComma size > 4]) ifTrue: [ results add: (TLRuleFailure on: self at: aSentence) ].
	^results


]

{ #category : 'initialization' }
TLJoinedSentencesWithCommasRule >> wordsBeforeComma [

	^wordsBeforeCommaExceptions 
]
