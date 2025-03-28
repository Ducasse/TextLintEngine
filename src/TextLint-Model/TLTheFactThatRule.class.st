Class {
	#name : 'TLTheFactThatRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLTheFactThatRule >> matchingString [
	^ 'the fact that'
]

{ #category : 'accessing' }
TLTheFactThatRule >> name [
	^ 'Avoid "the fact that"'
]

{ #category : 'accessing' }
TLTheFactThatRule >> rationale [
	^ '"The fact that" is an especially debilitating expression.'
]
