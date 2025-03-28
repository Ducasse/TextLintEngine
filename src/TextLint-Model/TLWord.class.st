Class {
	#name : 'TLWord',
	#superclass : 'TLSyntacticElement',
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'checking' }
TLWord >> checkWith: aTextLintChecker [ 
	^ aTextLintChecker checkWord: self
]

{ #category : 'accessing' }
TLWord >> classification [
	^ TLWordClassifier classify: self text
]

{ #category : 'testing' }
TLWord >> classifiesAs: aSymbol [
	"Answer if the receiving word classifies with a certainty of 1.0."
	
	| classifications |
	classifications := self classification.
	^ classifications size = 1 and: [ classifications first = aSymbol ]
]

{ #category : 'testing' }
TLWord >> classifiesAs: aSymbol withCertainty: aFloat [
	"Answer if the receiving word classifies as aSymbol with a certainty of aFloat (0.0 - 1.0)."
	
	| classifications |
	classifications := self classification.
	(classifications includes: aSymbol)
		ifFalse: [ ^ false ].
	(classifications size = 1)
		ifTrue: [ ^ true  ].
	^ 1.0 / classifications size >= aFloat
]

{ #category : 'testing' }
TLWord >> isWord [
	^ true
]
