package pangram

import "strings"

const testVersion = 2

func makeCharMap() map[rune]bool {
	nextChar := 'a'
	charMap := make(map[rune]bool)
	for nextChar <= 'z' {
		charMap[nextChar] = false
		nextChar++
	}
	return charMap
}

func IsPangram(in string) bool {
	charMap := makeCharMap()
	for _, char := range strings.ToLower(in) {
		if _, ok := charMap[char]; ok {
			charMap[char] = true
		}
	}
	for _, exists := range charMap {
		if !exists {
			return false
		}
	}
	return true
}
