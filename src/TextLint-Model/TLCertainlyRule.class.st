Class {
	#name : 'TLCertainlyRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLCertainlyRule >> matchingString [
	^ 'certainly'

]

{ #category : 'accessing' }
TLCertainlyRule >> name [
	^ 'Avoid "certainly"'
]

{ #category : 'accessing' }
TLCertainlyRule >> rationale [
	^ 'Is a manerism that is used indicriminately by some speakers and writers. Avoid its usage if possible.'
]
