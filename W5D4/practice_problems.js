function madLib(verb, adjective, noun){
  console.log("We shall " + verb.toUpperCase() + " the " + adjective.toUpperCase() + " " + noun.toUpperCase())
}


// console.log(madLib("verb", "adj", "noun"))

function isSubstring(searchString, subString){
	return searchString.includes(subString)
}

// console.log(isSubstring("aba", "a"))
// console.log(isSubstring("aba", "c"))

function fizzBuzz(arr){
	var new_arr = []
	for(var i = 0; i<arr.length; i++){
		if(arr[i]%3==0 ^ arr[i]%5==0){
			new_arr.push(arr[i])
		}
	}
	return new_arr
}

// console.log(fizzBuzz([1,2,3,4,5]))

function isPrime(n){
  if (n < 2) { return false; }

  for (let i = 2; i < n; i++) {
    if (n % i === 0) {
      return false;
    }
  }

  return true;
}
// console.log(isPrime(4))
// console.log(isPrime(5))

function sumOfNPrimes(n){
	var sum = 0 
	var count = 0 
	var i = 2
	while(count<n){
		if isPrime(i){
			sum += i 
			count += 1 
		}
	}
	return sum 
}







