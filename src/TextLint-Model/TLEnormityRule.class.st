Class {
	#name : 'TLEnormityRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLEnormityRule >> matchingString [
	^ 'enormity'

]

{ #category : 'accessing' }
TLEnormityRule >> name [
	^ 'Avoid "enormity"'
]

{ #category : 'accessing' }
TLEnormityRule >> rationale [
	^ 'Use only in the sense of monstrous wickedness. Misleading, if not wrong, when used to express bigness.'
]
