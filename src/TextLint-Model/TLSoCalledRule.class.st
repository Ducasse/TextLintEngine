Class {
	#name : 'TLSoCalledRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLSoCalledRule >> matchingString [
	^ 'so called'
]

{ #category : 'accessing' }
TLSoCalledRule >> name [
	^ 'Avoid "so called"'
]

{ #category : 'accessing' }
TLSoCalledRule >> rationale [
	^ 'Avoid using "so called" it is a general expression that adds nothing to the sentence.'
]
