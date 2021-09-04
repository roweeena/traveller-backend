function bubbleSort(array) {
  //Joel's  solution - couldn't figure it out  on my own
    let needToIterate = true;
    let end = array.length - 1;

    while (needToIterate === true){
      needToIterate = false;

      for (let i=0; i <  end; i++){
        if (array[i] > array[i+1]){
          //destructuring
          // const first = array[i];
          // array[i]= array[i+1];
          // array[i+1] = first;
          
          //parallel assignment
          [array[i], array[i+1]]=[array[i+1], array[i]];
          needToIterate = true;
        }
      }
    }
    end--;

    return array;
}

module.exports = bubbleSort;
