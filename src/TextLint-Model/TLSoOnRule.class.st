Class {
	#name : 'TLSoOnRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLSoOnRule >> matchingString [
	^ 'so on'
]

{ #category : 'accessing' }
TLSoOnRule >> name [
	^ 'Avoid "so on"'
]

{ #category : 'accessing' }
TLSoOnRule >> rationale [
	^ 'Avoid using "so on" it is a general expression that adds nothing to the sentence.'
]
