package varray_assign

public struct Transform {
    public var matrix: VArray<Float32, $9> = VArray<Float32, $9>(repeat: 0.0)

    public operator func [](index: Int64, value!: Float32): Unit {
        // this assignment causes a compiler error in Cangjie 1.0.0
        matrix[index] = 10.0
    }
}

main(): Int64 {
    println("hello world")
    return 0
}
