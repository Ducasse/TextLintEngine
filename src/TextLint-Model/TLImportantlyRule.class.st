Class {
	#name : 'TLImportantlyRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLImportantlyRule >> matchingString [
	^ 'importantly'

]

{ #category : 'accessing' }
TLImportantlyRule >> name [
	^ 'Avoid "importantly"'
]

{ #category : 'accessing' }
TLImportantlyRule >> rationale [
	^ 'Avoid by rephrasing.'
]
