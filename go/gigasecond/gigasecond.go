package gigasecond

// import path for the time package from the standard library
import (
	"math"
	"time"
)

const testVersion = 4

var gigaSecondDuration = time.Duration(math.Pow(10, 9)) * time.Second

func AddGigasecond(birth time.Time) time.Time {
	return birth.Add(gigaSecondDuration)
}
