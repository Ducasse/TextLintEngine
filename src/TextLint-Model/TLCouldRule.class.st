Class {
	#name : 'TLCouldRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLCouldRule >> matchingString [
	^ 'could'

]

{ #category : 'accessing' }
TLCouldRule >> name [
	^ 'Avoid "could"'
]

{ #category : 'accessing' }
TLCouldRule >> rationale [
	^ 'Avoid using the word "could" because it weakens the sentence.'
]
