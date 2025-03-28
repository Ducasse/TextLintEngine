Class {
	#name : 'TLLetsRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLLetsRule >> matchingString [
	^ 'lets'
]

{ #category : 'accessing' }
TLLetsRule >> name [
	^ 'Avoid lets'
]

{ #category : 'accessing' }
TLLetsRule >> rationale [
	^ 'Let plus a subject should be used instead of using lets.'
]
