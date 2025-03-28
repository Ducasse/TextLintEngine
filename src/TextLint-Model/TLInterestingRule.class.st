Class {
	#name : 'TLInterestingRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLInterestingRule >> matchingString [
	^ 'interesting'

]

{ #category : 'accessing' }
TLInterestingRule >> name [
	^ 'Avoid "interesting"'
]

{ #category : 'accessing' }
TLInterestingRule >> rationale [
	^ 'Avoid it as a means of introduction. Do not announce that something is interesting.'
]
