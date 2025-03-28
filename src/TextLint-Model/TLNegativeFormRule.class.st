Class {
	#name : 'TLNegativeFormRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLNegativeFormRule >> matchingString [
	^ 'not'

]

{ #category : 'accessing' }
TLNegativeFormRule >> name [
	^ 'Avoid negative form'
]

{ #category : 'accessing' }
TLNegativeFormRule >> rationale [
	^ 'When possible, put statements in positive form.'
]
