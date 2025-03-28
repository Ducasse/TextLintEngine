Class {
	#name : 'TLParagraph',
	#superclass : 'TLElement',
	#instVars : [
		'sentences'
	],
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'instance creation' }
TLParagraph class >> withAll: aCollection [
	 ^self new initializeWithAll: aCollection
]

{ #category : 'checking' }
TLParagraph >> checkWith: aTextLintChecker [ 
	^aTextLintChecker checkParagraph: self
]

{ #category : 'accessing' }
TLParagraph >> children [
	^ sentences
]

{ #category : 'initialization' }
TLParagraph >> initializeWithAll: aCollection [

	sentences := aCollection
]

{ #category : 'testing' }
TLParagraph >> isParagraph [
	^ true
]

{ #category : 'visiting' }
TLParagraph >> processFor: aVisitor [
	^ aVisitor processParagraph: self
]

{ #category : 'accessing' }
TLParagraph >> sentences [
	^sentences reject: [:eachElement | eachElement isWhitespace]
]

{ #category : 'accessing' }
TLParagraph >> words [
	^self sentences gather: [ :each | each words ]
]
