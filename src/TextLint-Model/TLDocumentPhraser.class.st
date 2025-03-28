Class {
	#name : 'TLDocumentPhraser',
	#superclass : 'TLCachedParser',
	#instVars : [
		'document',
		'documentTerminator',
		'paragraph',
		'paragraphTerminator',
		'sentence',
		'sentenceTerminator'
	],
	#category : 'TextLint-Model-Parser',
	#package : 'TextLint-Model',
	#tag : 'Parser'
}

{ #category : 'grammar' }
TLDocumentPhraser >> document [
	^ (paragraph starLazy: documentTerminator) , (documentTerminator optional)
]

{ #category : 'grammar' }
TLDocumentPhraser >> documentTerminator [
	^ PPPredicateObjectParser 
		on: [ :token | token isEndOfDocument ] 
		message: 'End of document expected'
]

{ #category : 'grammar' }
TLDocumentPhraser >> paragraph [
	^ (sentence starLazy: paragraphTerminator / documentTerminator) , (paragraphTerminator optional) 
]

{ #category : 'grammar' }
TLDocumentPhraser >> paragraphTerminator [
	^ PPPredicateObjectParser 
		on: [ :token | token isWhitespace and: [ token isEndOfParagraph ] ] 
		message: 'End of paragraph expected'
]

{ #category : 'grammar' }
TLDocumentPhraser >> sentence [
	^ (#any asParser starLazy: sentenceTerminator / paragraphTerminator / documentTerminator) , (sentenceTerminator optional)
]

{ #category : 'grammar' }
TLDocumentPhraser >> sentenceTerminator [
	^ PPPredicateObjectParser 
		on: [ :token | token isPunctuation and: [ token isEndOfSentence ] ] 
		message: 'End of sentence expected'
]

{ #category : 'accessing' }
TLDocumentPhraser >> start [
	^ document end
]
