Class {
	#name : 'TLHoweverRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLHoweverRule >> matchingPattern [
	^ (self anchorBegin) , (self word: 'however')
]

{ #category : 'accessing' }
TLHoweverRule >> name [
	^ 'Avoid "however"'
]

{ #category : 'accessing' }
TLHoweverRule >> rationale [
	^ 'Avoid starting a sentence with "however" when the meaning is nevertheless.'
]
