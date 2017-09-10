package accumulate

const testVersion = 1

func Accumulate(list []string, fn func(string) string) (acc []string) {
	for _, item := range list {
		acc = append(acc, fn(item))
	}
	return acc
}
