Class {
	#name : 'TLIrregardlessRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLIrregardlessRule >> matchingString [
	^ 'irregardless'


]

{ #category : 'accessing' }
TLIrregardlessRule >> name [
	^ 'Avoid "irregardless"'
]

{ #category : 'accessing' }
TLIrregardlessRule >> rationale [
	^ 'Should be "regardless". Irregardless is avoided by careful users of English.'
]
