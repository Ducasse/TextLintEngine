Class {
	#name : 'TLOftenEnoughRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLOftenEnoughRule >> matchingString [
	^ 'often enough'
]

{ #category : 'accessing' }
TLOftenEnoughRule >> name [
	^ 'Avoid "offen enough"'
]

{ #category : 'accessing' }
TLOftenEnoughRule >> rationale [
	^ 'Avoid using "often enough" it is pure clutter. Use "often" instead.'
]
