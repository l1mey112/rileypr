import math.big { Integer, integer_from_int }

fn isprime(number Integer)bool{
    if number < integer_from_int(2) {return false}
    if number % integer_from_int(2) == integer_from_int(0) {return number == integer_from_int(2)}

    root := number.isqrt()
	for i := integer_from_int(3); i < root; i+=integer_from_int(1) {
		if number % i == integer_from_int(0) {return false}
	}

    return true
}

fn main(){
	mut p1 := integer_from_int(2)
	mut p2 := integer_from_int(3)
	mut p3 := integer_from_int(5)

	for {
	//	tmp1 := p1
		tmp2 := p2
		tmp3 := p3

		p3 = p1 * p2 + p3
        p2 = tmp3
        p1 = tmp2

		if isprime(p3){println("primer $p3")} else {println("noprimer $p3")}
	}
}