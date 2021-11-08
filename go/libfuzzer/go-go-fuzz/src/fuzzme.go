package test

func fuzzme(bytes []byte) int {
    content := string(bytes)
    if len(content) >= 3 {
        if string(content[0]) == "b" {
            if string(content[1]) == "u" {
                if string(content[2]) == "g" {
                    panic()
                }
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
    _ = fuzzme(data)
    return 0
}
