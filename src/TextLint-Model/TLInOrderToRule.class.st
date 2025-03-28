Class {
	#name : 'TLInOrderToRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLInOrderToRule >> matchingString [
	^ 'in order to'
]

{ #category : 'accessing' }
TLInOrderToRule >> name [
	^ 'Avoid "in order to"'
]

{ #category : 'accessing' }
TLInOrderToRule >> rationale [
	^ 'This expression is pure clutter and most of the time can be avoided.'
]
