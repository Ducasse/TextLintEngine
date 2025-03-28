Class {
	#name : 'TLExcessOfAdjectivesRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLExcessOfAdjectivesRule >> matchingPattern [
	^ (self wordSatisfying: [ :word | word classifiesAs: #adjective ]) ,
	   (self whitespace) ,
	   (self wordSatisfying: [ :word | word classifiesAs: #adjective ])
	

]

{ #category : 'accessing' }
TLExcessOfAdjectivesRule >> name [
	^ 'Avoid excess of adjectives'
]

{ #category : 'accessing' }
TLExcessOfAdjectivesRule >> rationale [
	^ 'Avoid using two or more continuous adjectives, be concise and clear.'
]
