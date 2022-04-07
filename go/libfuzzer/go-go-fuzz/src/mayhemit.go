package test

func mayhemit(bytes []byte) int {
    content := string(bytes)
    if len(content) >= 3 {
        if string(content[0]) == "b" {
            if string(content[1]) == "u" {
                if string(content[2]) == "g" {
                    panic("found a bug!")
                }
            }
        }
    }
    return 0
}

func Fuzz(data []byte) int {
    _ = mayhemit(data)
    return 0
}
