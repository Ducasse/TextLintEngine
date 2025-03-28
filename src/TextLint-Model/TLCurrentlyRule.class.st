Class {
	#name : 'TLCurrentlyRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLCurrentlyRule >> matchingString [
	^ 'currently'

]

{ #category : 'accessing' }
TLCurrentlyRule >> name [
	^ 'Avoid "currently"'
]

{ #category : 'accessing' }
TLCurrentlyRule >> rationale [
	^ 'In the sense of now with a verb in the present tense, "currently" is usually redundant. Emphasis is better achieved through a more precise reference to time.'
]
