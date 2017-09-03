/*
Package twofer
`Two-fer` or `2-fer` is short for two for one. One for you and one for me.
*/
package twofer

import "fmt"

// ShareWith needs a comment documenting it.
func ShareWith(name string) string {
	oneFor := "you"
	if len(name) > 0 {
		oneFor = name
	}
	return fmt.Sprintf("One for %s, one for me.", oneFor)
}
