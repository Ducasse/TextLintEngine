Class {
	#name : 'TLCachedParser',
	#superclass : 'PPCompositeParser',
	#classInstVars : [
		'instance'
	],
	#category : 'TextLint-Model-Parser',
	#package : 'TextLint-Model',
	#tag : 'Parser'
}

{ #category : 'private' }
TLCachedParser class >> compile: aTextString classified: aCategorySymbol withStamp: aStampString notifying: aRequestor logSource: aBoolean [
	self flush.
	^ super compile: aTextString classified: aCategorySymbol withStamp: aStampString notifying: aRequestor logSource: aBoolean
]

{ #category : 'private' }
TLCachedParser class >> flush [
	self subclasses do: [ :each | each flush ].
	instance := nil
]

{ #category : 'instance creation' }
TLCachedParser class >> newStartingAt: aSymbol [
	^ instance ifNil: [ instance := super newStartingAt: aSymbol ]
]
