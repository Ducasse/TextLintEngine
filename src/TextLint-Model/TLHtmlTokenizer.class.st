Class {
	#name : 'TLHtmlTokenizer',
	#superclass : 'TLPlainTokenizer',
	#category : 'TextLint-Model-Parser',
	#package : 'TextLint-Model',
	#tag : 'Parser'
}

{ #category : 'testing' }
TLHtmlTokenizer class >> canTokenize: aString [
	^ #('<?xml' '<html' '<body') anySatisfy: [ :each | aString includesSubstring: each caseSensitive: false ]
]

{ #category : 'tokens' }
TLHtmlTokenizer >> markup [
	^ (($< asParser , $> asParser negate plus , $> asParser)
	/  ($& asParser , $; asParser negate plus , $; asParser))
			token ==> [ :token | TLMarkup with: token ]
]
