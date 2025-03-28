Class {
	#name : 'TLCannotRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLCannotRule >> matchingString [
	^ 'can not'
]

{ #category : 'accessing' }
TLCannotRule >> name [
	^'Avoid "can not"'
]

{ #category : 'accessing' }
TLCannotRule >> rationale [
	^ '"Can not" as a two word phrase is used for stressing an impossibility, otherwise "cannot" should be used.'
]
