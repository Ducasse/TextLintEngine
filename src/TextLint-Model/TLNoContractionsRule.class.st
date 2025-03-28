Class {
	#name : 'TLNoContractionsRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLNoContractionsRule >> matchingPattern [
	^ (self word) , (self punctuation: '''') , (self wordIn: #('ve' 't' 'd' 'll' 're' 'm' 's'))
]

{ #category : 'accessing' }
TLNoContractionsRule >> name [
	^ 'Avoid contraction'
]

{ #category : 'accessing' }
TLNoContractionsRule >> rationale [
	^ 'Contractions are not allowed since they could be ambiguous.'
]
