Class {
	#name : 'TLTrueFactRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLTrueFactRule >> matchingPattern [
	^ (self word: 'true') , (self separators) , ((self word: 'fact') / (self word: 'facts'))
]

{ #category : 'accessing' }
TLTrueFactRule >> name [
	^ 'Avoid "true fact"'
]

{ #category : 'accessing' }
TLTrueFactRule >> rationale [
	^ 'Never use the expressions "true fact/s". It is a tautology.'
]
