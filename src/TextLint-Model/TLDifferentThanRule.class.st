Class {
	#name : 'TLDifferentThanRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLDifferentThanRule >> matchingString [
	^ 'different than'
]

{ #category : 'accessing' }
TLDifferentThanRule >> name [
	^ 'Avoid "different than"'
]

{ #category : 'accessing' }
TLDifferentThanRule >> rationale [
	^ 'Here logic supports stablished usage: one thing differs from another, hence, different from.'
]
