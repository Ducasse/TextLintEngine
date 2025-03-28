Class {
	#name : 'TLALotRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLALotRule >> matchingString [
	^ 'a lot'
]

{ #category : 'accessing' }
TLALotRule >> name [
	^ 'Avoid "a lot"'
]

{ #category : 'accessing' }
TLALotRule >> rationale [
	^ 'Avoid using "a lot", it weakens the sentence.'
]
