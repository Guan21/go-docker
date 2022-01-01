package main

import "fmt"

type MyInt int

func (i MyInt) Double() int {
	return int(i * 2)
}

/*
 return が定義したstruts の場合、返り値の再定義が不要です。
*/
func (i MyInt) Double2() MyInt {
	return i * 3
}

func main() {
	myInt := MyInt(10)
	fmt.Println(myInt.Double())
	fmt.Println(myInt.Double2())
}
