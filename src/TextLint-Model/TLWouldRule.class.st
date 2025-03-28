Class {
	#name : 'TLWouldRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLWouldRule >> matchingString [
	^ 'would'

]

{ #category : 'accessing' }
TLWouldRule >> name [
	^ 'Avoid "would"'
]

{ #category : 'accessing' }
TLWouldRule >> rationale [
	^ 'Avoid using the word "would" because it weakens the sentence.'
]
