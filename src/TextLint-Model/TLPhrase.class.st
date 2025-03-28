Class {
	#name : 'TLPhrase',
	#superclass : 'TLElement',
	#instVars : [
		'syntacticElements'
	],
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'instance creation' }
TLPhrase class >> withAll: aCollection [

	 ^self new initializeWithAll: aCollection
]

{ #category : 'accessing' }
TLPhrase >> children [
	^ syntacticElements
]

{ #category : 'initialization' }
TLPhrase >> initializeWithAll: aCollection [

	syntacticElements := aCollection
]

{ #category : 'testing' }
TLPhrase >> isPhrase [
	^ true
]

{ #category : 'accessing' }
TLPhrase >> phraseWithoutMarkups [
	^ self class withAll: (syntacticElements reject: [ :each | each isMarkup ])
]

{ #category : 'visiting' }
TLPhrase >> processFor: aVisitor [
	^ aVisitor processPhrase: self
]

{ #category : 'accessing' }
TLPhrase >> size [
	^self words size
]

{ #category : 'accessing' }
TLPhrase >> words [
	^ syntacticElements select: [:eachToken | eachToken isWord ]
]
