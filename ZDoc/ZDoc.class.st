"
I print documentation of classes and packages to streams.
"
Class {
	#name : #ZDoc,
	#superclass : #Object,
	#category : #ZDoc
}

{ #category : #printing }
ZDoc class >> documentClass: aClass on: aStream [
	"Print documentation of aClass onto aStream"
	aStream nextPutAll: 'Documentation for '; nextPutAll: aClass name; cr.
	aStream nextPutAll: 'Class comment: '; nextPutAll: aClass comment; cr; cr.
	aStream nextPutAll: 'Messages'; cr; nextPutAll: '-----'; cr.
	(aClass selectors) do: [ :sel | 
		aStream print: sel; cr.
		aStream print: (aClass firstCommentAt: sel); cr; cr ].
	aStream flush.
]

{ #category : #printing }
ZDoc class >> documentPackage: aPackage on: aStream [
	"Print documentation of aPackage onto aStream"
	| set |
	set := aPackage classes.
	set do: [ :c | self documentClass: c on: aStream ].
]
