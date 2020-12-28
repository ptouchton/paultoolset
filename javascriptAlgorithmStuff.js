// 1. Returning if an array is all unique
//     - apply caching/bread crumb technique
export function uniqSort(arr: Array<number>): Array<number> {

  const breadCrumbs: Object = {};
  let result: Array<number> = [arr[0]];

  for (let i of arr) {

    if (!breadCrumbs[arr[i]]) {

      result.push(arr[i]);
      breadCrumbs[arr[i]] = true;
    }
  }
  // console.log(breadCrumbs);
  // console.log(result);
  
  return result.sort((a,b) => a - b);

}

let ret = uniqSort([4,2,2,3,2,2,2]);
console.log(ret);