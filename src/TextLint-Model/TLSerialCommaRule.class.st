Class {
	#name : 'TLSerialCommaRule',
	#superclass : 'TLTextLintRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'private' }
TLSerialCommaRule >> cutAt: aBlock in: aCollection [ 
	| result current|
	result := OrderedCollection new.
	current := OrderedCollection new.
	aCollection do: [:e |
		e isWhitespace ifFalse: [
			(aBlock value: e)
				ifTrue: [current isEmpty ifFalse: [result add: current. current:= OrderedCollection new]]
				ifFalse: [current add: e]]
		].
	current isEmpty ifFalse: [result add: current].
	^ result
]

{ #category : 'accessing' }
TLSerialCommaRule >> name [
	^ 'Use the serial comma'
]

{ #category : 'accessing' }
TLSerialCommaRule >> rationale [
	^ 'Use a comma after the next-to-last item in a series of three or more elements.'
]

{ #category : 'running' }
TLSerialCommaRule >> runOnSentence: aSentence [
	| parts last average |
	parts := self
		cutAt: [ :each | each text = ',' ]
		in: aSentence children.
	parts size < 2
		ifTrue: [ ^ #() ].
	last := self 
		cutAt: [ :each | each text = 'and' or: [ each text = 'or' ] ] 
		in: parts last.
	last size < 2
		ifTrue: [ ^ #() ].
	parts := parts allButLast , last.
	parts size < 3
		ifTrue: [ ^ #() ].
	parts := parts allButFirst.
	"only consider it, if all parts have roughly the same number of words"
	average := (parts inject: 0 into: [ :count :part | count + part size ]) / parts size asFloat.
	(parts allSatisfy: [ :part | part size between: average - 1.5 and: average + 1.5 ])
		ifFalse: [ ^ #() ].
	^ Array with: (TLRuleFailure on: self at: aSentence)
]
