Class {
	#name : 'TLSyntacticElement',
	#superclass : 'TLElement',
	#instVars : [
		'token'
	],
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'instance creation' }
TLSyntacticElement class >> with: aToken [
	 ^ self new initializeWith: aToken
]

{ #category : 'initialization' }
TLSyntacticElement >> initializeWith: aToken [
	token := aToken
]

{ #category : 'testing' }
TLSyntacticElement >> isSyntacticElement [ 
	^ true
]

{ #category : 'printing' }
TLSyntacticElement >> printContentOn: aStream [
	aStream nextPutAll: self text
]

{ #category : 'visiting' }
TLSyntacticElement >> processFor: aVisitor [
	^ aVisitor processSyntacticElement: self
]

{ #category : 'accessing' }
TLSyntacticElement >> start [
	^ self token start
]

{ #category : 'accessing' }
TLSyntacticElement >> stop [
	^ self token stop
]

{ #category : 'accessing' }
TLSyntacticElement >> text [
	^ token value
]

{ #category : 'accessing' }
TLSyntacticElement >> token [
	^ token
]
