#pragma once

// Header Files
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

// Macro Definitions
#define BYTE_SIZE 16
#define BOOL_HIGH 1
#define BOOL_LOW 0

// Data Implementations
struct node{
	int node_data;

	struct node *nextNode;
};

// Function Implementations
/*
	Name: getRandBool()
	Process: generates a pseudo-random boolean value
	Method Input: none
	Method Output(parameters): none
	Method Output(returned): random boolean value
	Device Input: none
	Device Output: none
	Dependencies: rand()
*/
int getRandBool();

/*
	Name: generateByte
	Process: generates an empty space in memory to hold our byte
	Method Input: none
	Method Output(parameters): none
	Method Output(returned): pointer to reserved empty space for a byte 
	Device Input: none
	Device Output: none
	Dependencies: malloc(), sizeof() 
*/
struct node *generateByte(struct node *headNode);

/*
	Name: mungeByte 
	Process: fills a byte bit-by-bit randomly with 0s and 1s
	Method Input: base index of the empty byte
	Method Output(parameters): none
	Method Output(returned): pointer to the base index of the filled byte
	Device Input: none
	Device Output: none
	Dependencies: getRandBool()
*/
struct node *mungeByte(struct node *headNode);

/*
	Name: printByte
	Process: prints and displays a byte with it's corresponding data
	Method Input: base index of the given byte
	Method Output(parameters): none
	Method Output(returned): none
	Device Input: none
	Device Output: Prints and displays a byte with corresponding data
	Dependencies: printf(), bitToDecimal
*/
void printByte(struct node *headNode);

/*
	Name: clearByte
	Process: clears a given byte bit-by-bit
	Method Input: base index of the given byte
	Method Output(parameters): none
	Method Output(returned): boolean success flag
	Device Input: none
	Device Output: none
	Dependencies: free()
*/
bool clearByte(struct node *headNode);

/*
	Name: bitToDecimal
	Process: converts a boolean value from a bit into it's decimal value
	Method Input: the bit value and the Nth ordination(little-endian index)
	Method Output(parameters): none
	Method Output(returned): decimal value of the bit inside of the byte
	Device Input: none
	Device Output: none
	Dependencies: powf() 
*/
int bitToDecimal(int node_data, float N);
