Class {
	#name : 'TLWordClassifier',
	#superclass : 'Object',
	#classVars : [
		'ClassificationTable'
	],
	#category : 'TextLint-Model',
	#package : 'TextLint-Model'
}

{ #category : 'accessing' }
TLWordClassifier class >> classify: aString [
	"Answer the possibly classifications of aString."
	
	^ self data at: aString asLowercase ifAbsent: [ #() ]
]

{ #category : 'private' }
TLWordClassifier class >> createData: aString [
	"Create the wordlist. The wordlist we use is from English Wiktionary. The contents of these files is Copyright to the contributors of the English Wiktionary under CC-SA-BY <http://creativecommons.org/licenses/by-sa/3.0/>, see <http://wikimediafoundation.org/wiki/Terms_of_Use> for more information. As a source we started from the latest english words available at <http://toolserver.org/~enwikt/definitions/> and processed them with
	
	awk -F '\t' '{ printf ""%s\t%s\n"", tolower($2), tolower($3) }' enwikt-defs-latest-en.tsv | egrep '^[A-Za-z]+.[a-z ]+$' | sed -e 's/proper noun/noun/' -e 's/cardinal number/number/' -e 's/verb form/verb/' -e 's/ordinal number/number/' | grep -v ' ' | sort | uniq | awk -F '\t' '{ printf ""%s\n%s\n"", $1, $2 }' > tl-words.txt"
	
	"self createData: '/Users/renggli/Downloads/tl-words.txt'"

	| input output zipped |
	input := FileStream fileNamed: aString.
	input converter: Latin1TextConverter new.
	output := self directory
		forceNewFileNamed: self filename.
	zipped := ZLibWriteStream on: output binary.
	[ input atEnd ] whileFalse: [
		| word |
		word := input nextLine.
		zipped nextPut: word size; nextPutAll: (ByteArray withAll: word) ].
	zipped close.
	output close
]

{ #category : 'accessing' }
TLWordClassifier class >> data [
	^ ClassificationTable ifNil: [ ClassificationTable := self loadData ]
]

{ #category : 'configuration' }
TLWordClassifier class >> directory [
	^ FileDirectory default
]

{ #category : 'accessing' }
TLWordClassifier class >> distributionOfMatches [
	^ self data inject: Bag new into: [ :bag :types | bag add: types size; yourself ]
]

{ #category : 'accessing' }
TLWordClassifier class >> distributionOfTypes [
	^ self data inject: Bag new into: [ :bag :types | bag addAll: types; yourself ]
]

{ #category : 'private' }
TLWordClassifier class >> downloadData [
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
TLWordClassifier class >> filename [
	^ 'tl-words.dat'
]

{ #category : 'initialization' }
TLWordClassifier class >> initialize [
	Smalltalk addToShutDownList: self
]

{ #category : 'private' }
TLWordClassifier class >> loadData [
	"Load data from an external file as fast as possible."

	| result stream |
	(self directory fileExists: self filename)
		ifFalse: [ self downloadData ].
	(self directory fileExists: self filename)
		ifFalse: [ self error: 'The word classification cannot be downloaded from <' , self url , '>.' ].
	result := Dictionary new.
	stream := self directory
		oldFileNamed: self filename.
	[	| zstream |
		zstream := ZLibReadStream on: stream binary.
		[ zstream atEnd ] whileFalse: [
			(result at: (String withAll: (zstream next: zstream next)) ifAbsentPut: [ Set new ])
				add: (String withAll: (zstream next: zstream next)) asSymbol ] ] 
		ensure: [ stream close ].
	result keysAndValuesDo: [ :key :values |
		result at: key put: values sorted ].
	^ result
]

{ #category : 'initialization' }
TLWordClassifier class >> shutDown [
	ClassificationTable := nil
]

{ #category : 'accessing' }
TLWordClassifier class >> types [
	^ self data inject: Set new into: [ :set :types | set addAll: types; yourself ]
]

{ #category : 'configuration' }
TLWordClassifier class >> url [
	^ 'http://www.lukas-renggli.ch/smalltalk/tl-words.dat'
]
