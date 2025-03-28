Class {
	#name : 'TLSentence',
	#superclass : 'TLElement',
	#instVars : [
		'syntacticElements',
		'phrasesCache',
		'sequencesCache'
	],
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'instance creation' }
TLSentence class >> withAll: aCollection [

	 ^self new initializeWithAll: aCollection
]

{ #category : 'accessing' }
TLSentence >> allPhrasesOfSize: aSmallInteger [
	| phrases words |
	phrasesCache at: aSmallInteger ifPresent: [:element | ^element].
	phrases := OrderedCollection new.
	words := self words.
	1 to: words size 
					do: [ :index | ((index + aSmallInteger - 1) <= words size) 
																	ifTrue: [ phrases add: (TLPhrase withAll: ( syntacticElements 
																														copyFrom: (syntacticElements indexOf: (words at: index )) 
																														to: (syntacticElements indexOf: (words at: index + aSmallInteger - 1))))]
																	ifFalse: [ phrasesCache at: aSmallInteger put: phrases. 
																		 	^phrases] ].
	phrasesCache at: aSmallInteger put: phrases.
	^phrases

]

{ #category : 'accessing' }
TLSentence >> allSequencesOfSize: aSmallInteger [
	| sequences children|
	sequencesCache at: aSmallInteger ifPresent: [:element | ^element].
	sequences := OrderedCollection new.
	children := self children.
	1 to: children size 
					do: [ :index | ((index + aSmallInteger - 1) <= children size) 
																	ifTrue: [ sequences add: (TLPhrase withAll: ( syntacticElements 
																														copyFrom: (syntacticElements indexOf: (children at: index )) 
																														to: (syntacticElements indexOf: (children at: index + aSmallInteger - 1))))]
																	ifFalse: [ sequencesCache at: aSmallInteger put: sequences. 
																		 	^sequences] ].
	sequencesCache at: aSmallInteger put: sequences.
	^sequences

]

{ #category : 'checking' }
TLSentence >> checkWith: aTextLintChecker [ 
	^aTextLintChecker checkSentence: self
]

{ #category : 'accessing' }
TLSentence >> children [
	^ syntacticElements
]

{ #category : 'testing' }
TLSentence >> containsPhrase: aString [ 
	^ self wordsAsString includesSubstring: aString caseSensitive: false
]

{ #category : 'initialization' }
TLSentence >> initializeWithAll: aCollection [

	syntacticElements := aCollection.
	phrasesCache := Dictionary new.
	sequencesCache := Dictionary new.
]

{ #category : 'testing' }
TLSentence >> isSentence [
	^ true
]

{ #category : 'visiting' }
TLSentence >> processFor: aVisitor [
	^ aVisitor processSentence: self
]

{ #category : 'accessing' }
TLSentence >> words [
	^ syntacticElements select: [:eachToken | eachToken isWord ]
]

{ #category : 'accessing' }
TLSentence >> wordsAsString [
	^self words inject: '' into: [:count :each | count, ' ', each text] 
]
