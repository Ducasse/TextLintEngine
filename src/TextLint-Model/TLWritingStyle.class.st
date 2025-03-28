Class {
	#name : 'TLWritingStyle',
	#superclass : 'Object',
	#instVars : [
		'name',
		'rules'
	],
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'instance creation' }
TLWritingStyle class >> named: aString formedBy: anArray [ 
	^self new initializeNamed: aString formedBy: anArray 
]

{ #category : 'accessing' }
TLWritingStyle class >> scientificPaperStyle [
	^ self
		named: 'Scientific Paper Style'
		formedBy: (TLTextLintRule allRules 
			reject: [ :each | each class = TLWordRepetitionInParagraphRule ])
]

{ #category : 'composing' }
TLWritingStyle >> + aWritingStyle [
	^ self class
		named: (self name , ' + ' , aWritingStyle name)
		formedBy: (self rules addAll: aWritingStyle rules; yourself)
]

{ #category : 'composing' }
TLWritingStyle >> - aWritingStyle [
	^ self class 
		named: (self name , ' - ' , aWritingStyle name)
		formedBy: (self rules removeAllFoundIn: aWritingStyle rules; yourself)
]

{ #category : 'testing' }
TLWritingStyle >> includes: aRule [ 
	^rules includes: aRule
]

{ #category : 'initialization' }
TLWritingStyle >> initializeNamed: aString formedBy: aCollection [ 
	name := aString.
	rules := aCollection asOrderedCollection
]

{ #category : 'accessing' }
TLWritingStyle >> name [
	^ name
]

{ #category : 'accessing' }
TLWritingStyle >> rules [
	^ OrderedCollection withAll: rules
]
