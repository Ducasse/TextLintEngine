Class {
	#name : 'TLNounsAndAdjectivesListRule',
	#superclass : 'TLPatternRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLNounsAndAdjectivesListRule >> matchingPattern [
	| classification |
	^ (self wordSatisfying: [ :word |
		classification := (word classifiesAs: #adjective) 
			ifTrue: [ #adjective ]
			ifFalse: [ 
				(word classifiesAs: #noun)
					ifTrue: [ classification := #noun ]
					ifFalse: [ nil ] ].
		classification notNil ]) ,
	   (self separators) , 
	   (self wordSatisfying: [ :word | word classifiesAs: classification ]) ,
	   (self separators) , 
	   (self wordTextSatisfying: [ :value | value = 'and' or: [ value = 'or' ] ]) ,
	   (self separators) , 
	   (self wordSatisfying: [ :word | word classifiesAs: classification ])
]

{ #category : 'accessing' }
TLNounsAndAdjectivesListRule >> name [
	^ 'Avoid list of terms without comma'
]

{ #category : 'accessing' }
TLNounsAndAdjectivesListRule >> rationale [
	^ 'In a serie of three or more terms (adjectives or nouns) with a single conjunction, use a comma after each term except the last.'
]
