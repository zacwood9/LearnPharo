"
I represent a singly linked list.
"
Class {
	#name : #ZLinkedList,
	#superclass : #Object,
	#instVars : [
		'head',
		'count'
	],
	#category : #Zac
}

{ #category : #'instance creation' }
ZLinkedList class >> with: aCollection [
	"Initializes a ZLinkedList with a collection."
	| list |
	list := (self new).
	aCollection do: [ :e | list insert: e ].
	^ list.
]

{ #category : #accessing }
ZLinkedList >> count [
	"Answers the number of elements in the linked list."
	^ count.
]

{ #category : #accessing }
ZLinkedList >> elementAt: anIndex [
	"Answers with the element at anIndex."

	| node |
	node := head.
	( node isNil ) ifTrue: [ self error: 'Linked List is empty' ].
	(anIndex - 1)
		timesRepeat: [ node := node next ].
	^ node val.
]

{ #category : #initialization }
ZLinkedList >> initialize [
	"comment stating purpose of message"
	super initialize.
	count := 0.
	head := nil.
]

{ #category : #accessing }
ZLinkedList >> insert: aVal [
	"Inserts an element at the end of the linked list."
	| v |
	count := count + 1.
	( head isNil ) ifTrue: [ head := (ZNode withVal: aVal). ^ self].
	v := head.
	[ v next notNil ] whileTrue: [ v := v next ].
	v next: (ZNode withVal: aVal).
	
]

{ #category : #modifying }
ZLinkedList >> removeAt: anIndex [
	"Removes the element from anIndex."
	| ptr |
	(anIndex > count) ifTrue: [ self error: 'index out of bounds'. ^self ].

	(anIndex = 1) 
		ifTrue:  [ head := head next ] 
		ifFalse: [
			ptr := head.
			(anIndex - 2) timesRepeat: [ ptr := ptr next ].
			ptr next: (ptr next next) 
		].
	count := count - 1.
	
	
]
