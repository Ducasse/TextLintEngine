Class {
	#name : 'TLThesaurus',
	#superclass : 'Object',
	#classVars : [
		'ThesaurusTable'
	],
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'private' }
TLThesaurus class >> createData: aString [
	"Create the thesarus from http://www.gutenberg.org/ebooks/3202"
	"self createData: '/Users/renggli/Downloads/mthesaur.txt'"

	| input output zipped |
	input := FileStream fileNamed: aString.
	input converter: Latin1TextConverter new.
	output := self directory
		forceNewFileNamed: self filename.
	zipped := ZLibWriteStream on: output binary.
	[ input atEnd ] whileFalse: [
		| words |
		words := ((input nextLine findTokens: $,)
			reject: [ :each | each anySatisfy: [ :char | char = $ ] ])
			collect: [ :each | each asLowercase ].
		words isEmpty ifFalse: [
			zipped nextInt32Put: words size.
			words
				do: [ :word | zipped nextPut: word size; nextPutAll: (ByteArray withAll: word) ] ] ].
	zipped close.
	output close
]

{ #category : 'accessing' }
TLThesaurus class >> data [
	^ ThesaurusTable ifNil: [ ThesaurusTable := self loadData ]
]

{ #category : 'configuration' }
TLThesaurus class >> directory [
	^ FileDirectory default
]

{ #category : 'private' }
TLThesaurus class >> downloadData [
	"Download data from a server."
	
	| response stream |
	response := [ HTTPSocket httpGet: self url ]
		on: Error
		do: [ :err | err messageText ].
	response isString
		ifTrue: [ ^ self ].
	stream := self directory 
		forceNewFileNamed: self filename.
	[ stream binary; nextPutAll: (response binary; contents) ]
		ensure: [ stream close ]
]

{ #category : 'configuration' }
TLThesaurus class >> filename [
	^ 'tl-thesaurus.dat'
]

{ #category : 'initialization' }
TLThesaurus class >> initialize [
	Smalltalk addToShutDownList: self
]

{ #category : 'private' }
TLThesaurus class >> loadData [
	"Load data from an external file as fast as possible."

	| result stream |
	(self directory fileExists: self filename)
		ifFalse: [ self downloadData ].
	(self directory fileExists: self filename)
		ifFalse: [ self error: 'The thesaurus cannot be downloaded from <' , self url , '>.' ].
	result := Dictionary new.
	stream := self directory
		oldFileNamed: self filename.
	[	| zstream |
		zstream := ZLibReadStream on: stream binary.
		[ zstream atEnd ] whileFalse: [
			| words count |
			words := OrderedCollection new: (count := zstream nextInt32).
			count timesRepeat: [ words addLast: (String withAll: (zstream next: zstream next)) ].
			result at: words first put: words sorted asArray ] ]
		ensure: [ stream close ].
	result keysAndValuesDo: [ :key :values |
		result at: key put: values sorted ].
	^ result
]

{ #category : 'initialization' }
TLThesaurus class >> shutDown [
	ThesaurusTable := nil
]

{ #category : 'accessing' }
TLThesaurus class >> synonymsOf: aString [
	^ self data at: aString asLowercase ifAbsent: [ #() ]
]

{ #category : 'configuration' }
TLThesaurus class >> url [
	^ 'http://www.lukas-renggli.ch/smalltalk/tl-thesaurus.dat'
]
