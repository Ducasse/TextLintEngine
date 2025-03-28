Class {
	#name : 'TLQualifiersRule',
	#superclass : 'TLAvoidMultipleWordsUsageRule',
	#category : 'TextLint-Model-Rules',
	#package : 'TextLint-Model',
	#tag : 'Rules'
}

{ #category : 'accessing' }
TLQualifiersRule >> name [
	^ 'Avoid qualifier'
]

{ #category : 'accessing' }
TLQualifiersRule >> rationale [
	^ 'Qualifiers are the leeches that infest the pond of prose, sucking the blood of words.'
]

{ #category : 'accessing' }
TLQualifiersRule >> wordsToAvoid [
	^ #('clearly' 'completely' 'exceedingly' 'excellent' 'extremely' 'fairly' 'few' 'huge' 'interestingly' 'largely' 'little' 'many' 'mostly' 'pretty' 'quite' 'rather' 'really' 'relatively' 'remarkably' 'several' 'significantly' 'substantially' 'surprisingly' 'tiny' 'various' 'vast' 'very')
]
