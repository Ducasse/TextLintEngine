Class {
	#name : 'TLSomehowRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLSomehowRule >> matchingString [
	^ 'somehow'

]

{ #category : 'accessing' }
TLSomehowRule >> name [
	^ 'Avoid "somehow"'
]

{ #category : 'accessing' }
TLSomehowRule >> rationale [
	^ 'Avoid using the word "somehow". Is too general and weakens the sentence.'
]
