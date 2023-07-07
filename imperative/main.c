#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
// Selection sort 

void swap(int *t,int i,int j){
	t[i] = t[i]^t[j];
	t[j] = t[i]^t[j];
	t[i] = t[i]^t[j];
}

int indice_du_min(int *t,size_t size){
	int min = t[0];
	for(int i=0;i<size;i++){
		if(t[i] < min) min = t[i];
	}
	return min;
}

void selection_sort(int *t,size_t size){
	for(int j = -1; j < size; j++){
		int i = indice_du_min(t+j+1,size-j);
		if(t[i]<t[j])	
		swap(t,j,i);
	}
}
void printTable(int *t,size_t size){
	for(int i=0;i<size;i++)
		printf("%d ",t[i]);
	printf("\n");
}

int main(void){
	int *t = malloc(6*sizeof(int));
	for(int i=0;i<6;i++)t[i]=rand()%10;
	printTable(t,6);
	selection_sort(t,6);
	printTable(t,6);
}

