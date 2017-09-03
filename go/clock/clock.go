package clock

import "fmt"

const testVersion = 4
const minutesInDay = (60 * 24)

// You can find more details and hints in the test file.

type Clock struct {
	minutes int
	hour    int
}

func parseTime(hour, minutes int) (int, int) {
	modHour := hour % 24
	hourInMinutes := (modHour * 60) + minutes
	if hourInMinutes < 0 {
		modHourInMinutes := hourInMinutes % 1440
		hourInMinutes = minutesInDay + modHourInMinutes
	}
	newHour := (hourInMinutes / 60) % 24
	newMinutes := hourInMinutes % 60
	return newHour, newMinutes
}

func New(hour, minutes int) Clock {
	newHour, newMinutes := parseTime(hour, minutes)
	return Clock{hour: newHour, minutes: newMinutes}
}

func (clock Clock) String() string {
	return fmt.Sprintf("%.2d:%.2d", clock.hour, clock.minutes)
}

func (clock Clock) Add(minutes int) Clock {
	sumMinutes := clock.minutes + minutes
	sumHour := clock.hour
	newHour, newMinutes := parseTime(sumHour, sumMinutes)
	return Clock{hour: newHour, minutes: newMinutes}
}
