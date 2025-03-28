Class {
	#name : 'TLElement',
	#superclass : 'Object',
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'checking' }
TLElement >> checkWith: aTextLintChecker [ 
	self subclassResponsibility
]

{ #category : 'accessing' }
TLElement >> children [
	"Answer the children nodes."
	
	^ #()
	
]

{ #category : 'accessing' }
TLElement >> interval [
	"Answer the interval in the text in which the receiver is defined."
	
	^ self start to: self stop
]

{ #category : 'testing' }
TLElement >> isDocument [
	^ false
]

{ #category : 'testing' }
TLElement >> isEndOfDocument [
	^ false
]

{ #category : 'testing' }
TLElement >> isMarkup [
	^ false
]

{ #category : 'testing' }
TLElement >> isParagraph [
	^ false
]

{ #category : 'testing' }
TLElement >> isPhrase [
	^ false
]

{ #category : 'testing' }
TLElement >> isPunctuation [
	^ false
]

{ #category : 'testing' }
TLElement >> isSentence [
	^ false
]

{ #category : 'testing' }
TLElement >> isSyntacticElement [
	^ false
]

{ #category : 'testing' }
TLElement >> isWhitespace [
	^ false
]

{ #category : 'testing' }
TLElement >> isWord [
	^ false
]

{ #category : 'printing' }
TLElement >> printContentOn: aStream [
	self children do: [ :each | aStream nextPutAll: each text ]
]

{ #category : 'printing' }
TLElement >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' ('.
	self printContentOn: aStream.
	aStream nextPut: $)
]

{ #category : 'accessing' }
TLElement >> start [
	"Answer the start position of the receiver."
	
	^ self children isEmpty
		ifFalse: [ self children first start ]
		ifTrue: [ 1 ]
]

{ #category : 'accessing' }
TLElement >> stop [
	"Answer the end position of the receiver."
	
	^ self children isEmpty
		ifFalse: [ self children last stop ]
		ifTrue: [ 0 ]
]

{ #category : 'accessing' }
TLElement >> text [
	^ String streamContents: [ :stream | self printContentOn: stream ]
]

{ #category : 'accessing' }
TLElement >> token [
	"Answer the first token in the receiver or nil."
	
	^ self children isEmpty ifFalse: [ self children first token ]
]
