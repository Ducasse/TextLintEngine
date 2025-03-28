Class {
	#name : 'TLDoubtButRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLDoubtButRule >> matchingString [
	^ 'doubt but'
]

{ #category : 'accessing' }
TLDoubtButRule >> name [
	^ 'Avoid "doubt but"'
]

{ #category : 'accessing' }
TLDoubtButRule >> rationale [
	^ '"But" is unnecessary after "doubt".'
]
