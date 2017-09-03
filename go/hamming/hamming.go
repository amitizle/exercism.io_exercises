package hamming

import "errors"

const testVersion = 6

func Distance(strandA, strandB string) (int, error) {
	if len(strandA) != len(strandB) {
		return -1, errors.New("strings length are not equal")
	}
	diffCount := 0
	for i := 0; i < len(strandA); i++ {
		if strandA[i] != strandB[i] {
			diffCount += 1
		}
	}
	return diffCount, nil
}
