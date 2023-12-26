function findMaximumPieces(n) { 
    return 1 + n * ((n + 1) / 2); 
} 

let valor = gets() 

console.log(parseInt(findMaximumPieces(parseInt(valor))))