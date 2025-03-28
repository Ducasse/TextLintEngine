Class {
	#name : 'TLContinuousWordRepetitionRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'running' }
TLContinuousWordRepetitionRule >> matchingPattern [
	| aWord |
	^ (self wordTextSatisfying: [ :value | aWord := value. value isAllDigits not ]) , 
	   (self wordTextSatisfying: [ :value | aWord sameAs: value]) 
]

{ #category : 'running' }
TLContinuousWordRepetitionRule >> name [
	^ 'Avoid continuous word repetition'
]

{ #category : 'accessing' }
TLContinuousWordRepetitionRule >> rationale [
	^ 'Continous word repetition is mostly a sign of copy-and-paste text.'
]
