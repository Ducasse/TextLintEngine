Class {
	#name : 'TLThusRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLThusRule >> matchingPattern [
	^ (self anchorBegin) , (self word: 'thus')
]

{ #category : 'accessing' }
TLThusRule >> name [
	^ 'Avoid "thus"'
]

{ #category : 'accessing' }
TLThusRule >> rationale [
	^ 'Avoid starting a sentence with "thus". This word should be used for implication between two statements.'
]
