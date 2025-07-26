package cfunc_type

type functionAlias = CFunc<(name: CString) -> Bool>

private class Functions {
    public static let function1: functionAlias
    public static let function2: functionAlias
    public static let function3: CFunc<(name: CString) -> Bool>

    static init() {
        // function 1 won't compile while functions 2 and 3 will
        function1 = functionAlias(CPointer<Unit>())
        function2 = CFunc<(name: CString) -> Bool>(CPointer<Unit>())
        function3 = CFunc<(CString) -> Bool>(CPointer<Unit>())
    }
}

main(): Int64 {
    println("hello world")
    return 0
}
