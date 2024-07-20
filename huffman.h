#ifndef HUFFMAN_H
#define HUFFMAN_H

void Init(const unsigned *pFrequencies);
int Compress(const void *pInput, long InputSize, void *pOutput, int OutputSize);
int Decompress(const void *pInput, long InputSize, void *pOutput, int OutputSize);

#endif
