Class {
	#name : 'TLLongSentenceRule',
	#superclass : 'TLTextLintRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLLongSentenceRule >> maxWordsPerSentence [
	^ 40
]

{ #category : 'running' }
TLLongSentenceRule >> name [
	^ 'Avoid long sentence'
]

{ #category : 'accessing' }
TLLongSentenceRule >> rationale [
	^ 'Sentences of more than ' , self maxWordsPerSentence asString , ' words are too long, they should be split into multiple sentences.'
]

{ #category : 'running' }
TLLongSentenceRule >> runOnSentence: aSentence [ 
	| results |
	results := OrderedCollection new.
	(aSentence words size > self maxWordsPerSentence ) ifTrue: [results add: (TLRuleFailure on: self at: aSentence)].
	^results


]
