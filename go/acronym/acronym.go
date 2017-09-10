package acronym

import (
	"strings"
	"unicode"
)

const testVersion = 3

func splitField(c rune) bool {
	return unicode.IsPunct(c) || unicode.IsSpace(c)
}

func Abbreviate(in string) string {
	abbrevList := make([]rune, 0)
	words := strings.FieldsFunc(in, splitField)
	for _, word := range words {
		abbrevList = append(abbrevList, unicode.ToUpper(rune(word[0])))
	}
	return string(abbrevList)
}
