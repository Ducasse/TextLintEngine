Class {
	#name : 'TLAdjectiveSynonymRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLAdjectiveSynonymRule >> matchingPattern [
	| firstWord |
	^ (self wordSatisfying: [ :word | (firstWord := word) classifiesAs: #adjective ]) ,
	   (self separators) , 
	   (self wordSatisfying: [ :word | (TLThesaurus synonymsOf: firstWord text) includes: word text ])



]

{ #category : 'accessing' }
TLAdjectiveSynonymRule >> name [
	^ 'Avoid similar adjective synonyms'
]

{ #category : 'accessing' }
TLAdjectiveSynonymRule >> rationale [
	^ 'Avoid using an adjective followed by any word that has a similar meaning.'
]
