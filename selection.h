#pragma once

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <gsl/gsl_math.h>

// Data implementations
  // data structure
struct data{
	// character data
	char char_data;
	// pointer to next node
	struct data *next_node;
};

// Function Specifications

/*
	Name: displayData
	Process: displays the data to the user
	Method Input: pointer to the data frame
	Method Output(parameters): none
	Method Output(returned): none
	Device Input: none
	Device Output: displays the dataframe on-screen for the user
	Dependencies: printf()
*/
void displayData(struct data *dataFrame, int size);

/*
	Name: createData
	Process: creates the data dynamically in memory
	Method Input: size parameter
	Method Output(parameters): none
	Method Output(returned): pointer to newly created data
	Device Input: none
	Device Output: none
	Dependencies: malloc(), sizeof()
*/
struct data *createData(struct data *headNode, int size);

/*
	Name: sortData
	Process: sorts the data using the selection sort algorithm
	Method Input: pointer to data object
	Method Output(parameters): none
	Method Output(returned): pointer to sorted data object 
	Device Input: none
	Device Output: none
	Dependencies: 
*/
struct data *sortData(struct data *headPtr);

/*
	Name: clearData
	Process: frees and removes the data from memory and returns 
	         the success
	Method Input: pointer to data object
	Method Output(parameters): none
	Method Output(returned): boolean success flag
	Device Input: none
	Device Output: none
	Dependencies: free()
*/
bool clearData(struct data *headNode, int size);

/*
Name: 
Process: 
Method Input: 
Method Output(parameters): 
Method Output(returned): 
Device Input: 
Device Output: 
Dependencies: 
*/
char getCharBetween(char lowLimit, char highLimit);

/*
Name: 
Process: 
Method Input: 
Method Output(parameters): 
Method Output(returned): 
Device Input: 
Device Output: 
Dependencies: 
*/
int findLowestValue(struct data *headPtr);

/*
Name: 
Process: 
Method Input: 
Method Output(parameters): 
Method Output(returned): 
Device Input: 
Device Output: 
Dependencies: 
*/
struct data *fillData(struct data *dataFrame, int size);
