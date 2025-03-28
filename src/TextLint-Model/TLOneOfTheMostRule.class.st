Class {
	#name : 'TLOneOfTheMostRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLOneOfTheMostRule >> matchingString [
	^ 'one of the most'
]

{ #category : 'accessing' }
TLOneOfTheMostRule >> name [
	^ 'Avoid "one of the most"'
]

{ #category : 'accessing' }
TLOneOfTheMostRule >> rationale [
	^ 'Avoid this feeble formula. There is nothing wrong with the grammar the formula is simple threadbare.'
]
