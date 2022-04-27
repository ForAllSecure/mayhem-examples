@_cdecl("LLVMFuzzerTestOneInput") public func mayhemIt(data: UnsafePointer<CChar>, size: CInt) -> CInt {
    let buffer = UnsafeBufferPointer(start: data, count: Int(size))
    guard buffer.count >= 3 else {
        return 1
    }
    if
        buffer[0] == 0x62, // b
        buffer[1] == 0x75, // u
        buffer[2] == 0x67  // g
    {
        fatalError()
    }
    return 0
}