package bad

func Bad(bytes []byte) int {
	content := string(bytes)
	if len(content) < 3 {
		return 0
	}
	if string(content[0]) == "b" {
		if string(content[1]) == "a" {
			if string(content[2]) == "d" {
				_ = divBy(0)
			}
		}
	}
	return 0
}

func divBy(val int) int {
	y := 1 / val
	return y
}

func Fuzz(data []byte) int {
	_ = Bad(data)
	return 0
}
