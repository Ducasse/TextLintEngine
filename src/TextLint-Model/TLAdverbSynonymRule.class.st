Class {
	#name : 'TLAdverbSynonymRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLAdverbSynonymRule >> matchingPattern [
	| firstWord |
	^ (self wordSatisfying: [ :word | (firstWord := word) classifiesAs: #adverb ]) ,
	   (self separators) , 
	   (self wordSatisfying: [ :word | (TLThesaurus synonymsOf: firstWord text) includes: word text ])



]

{ #category : 'accessing' }
TLAdverbSynonymRule >> name [
	^ 'Avoid similar adverb synonyms'
]

{ #category : 'accessing' }
TLAdverbSynonymRule >> rationale [
	^ 'Avoid using an adverb followed by any word that has a similar meaning.'
]
