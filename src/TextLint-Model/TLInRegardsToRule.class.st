Class {
	#name : 'TLInRegardsToRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLInRegardsToRule >> matchingString [
	^ 'in regards to'
]

{ #category : 'accessing' }
TLInRegardsToRule >> name [
	^ 'Avoid "in regards to"'
]

{ #category : 'accessing' }
TLInRegardsToRule >> rationale [
	^ 'Often wrongly written "in regards to", should be "in regard to".'
]
