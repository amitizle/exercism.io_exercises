package raindrops

import (
	"sort"
	"strconv"
	"strings"
)

const testVersion = 3

// var factorToString = make(map[int]string)

var factorToString = map[int]string{
	3: "Pling",
	5: "Plang",
	7: "Plong",
}
var factorToStringKeys = make([]int, 0)

// Probably a bit of an overkill, but ¯\_(ツ)_/¯
func Convert(number int) string {
	strSlice := make([]string, 0)
	factorToStringKeys := make([]int, 0)
	for stringKey := range factorToString {
		factorToStringKeys = append(factorToStringKeys, stringKey)
	}
	sort.Ints(factorToStringKeys)
	for _, stringKey := range factorToStringKeys {
		str := factorToString[stringKey]
		if number%stringKey == 0 {
			strSlice = append(strSlice, str)
		}
	}
	if len(strSlice) == 0 {
		return strconv.Itoa(number)
	}
	return strings.Join(strSlice[:], "")
}
