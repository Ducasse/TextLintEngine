Class {
	#name : 'TLTextPhraser',
	#superclass : 'TLDocumentPhraser',
	#category : 'TextLint-Model-Parser',
	#package : 'TextLint-Model',
	#tag : 'Parser'
}

{ #category : 'accessing' }
TLTextPhraser >> document [
	^ super document ==> [ :nodes | TLDocument withAll: nodes first ]
]

{ #category : 'accessing' }
TLTextPhraser >> paragraph [
	^ super paragraph ==> [ :nodes |
		TLParagraph withAll: (nodes last isNil
			ifFalse: [ nodes first copyWith: nodes last ]
			ifTrue: [ nodes first ]) ]
]

{ #category : 'accessing' }
TLTextPhraser >> sentence [
	^ super sentence ==> [ :nodes |
		TLSentence withAll: (nodes last isNil
			ifFalse: [ nodes first copyWith: nodes last ]
			ifTrue: [ nodes first ]) ]
]
