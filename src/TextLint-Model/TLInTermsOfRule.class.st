Class {
	#name : 'TLInTermsOfRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLInTermsOfRule >> matchingString [
	^ 'in terms of'
]

{ #category : 'accessing' }
TLInTermsOfRule >> name [
	^ 'Avoid "in terms of"'
]

{ #category : 'accessing' }
TLInTermsOfRule >> rationale [
	^ 'A piece of padding usually best omitted.'
]
