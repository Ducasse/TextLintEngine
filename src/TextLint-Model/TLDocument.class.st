Class {
	#name : 'TLDocument',
	#superclass : 'TLElement',
	#instVars : [
		'paragraphs'
	],
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'instance creation' }
TLDocument class >> withAll: aCollection [

	 ^self new initializeWithAll: aCollection
]

{ #category : 'accessing' }
TLDocument >> allElements [
	^OrderedCollection new
				add: self;
				addAll: paragraphs;
				addAll: self sentences;
				addAll: self words;
				yourself.
]

{ #category : 'checking' }
TLDocument >> checkWith: aTextLintChecker [ 
	^aTextLintChecker checkDocument: self
]

{ #category : 'accessing' }
TLDocument >> children [
	^ paragraphs
]

{ #category : 'initialization' }
TLDocument >> initializeWithAll: aCollection [

	paragraphs := aCollection
]

{ #category : 'testing' }
TLDocument >> isDocument [
	^ true
]

{ #category : 'accessing' }
TLDocument >> paragraphs [
	^paragraphs 
]

{ #category : 'visiting' }
TLDocument >> processFor: aVisitor [
	^ aVisitor processDocument: self
]

{ #category : 'accessing' }
TLDocument >> sentences [
	^ self paragraphs gather: [ :each | each sentences ]
]

{ #category : 'accessing' }
TLDocument >> words [
	^self sentences gather: [ :each | each words ]
]
