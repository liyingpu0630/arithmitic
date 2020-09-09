
/* 方法一
分析：获取所有子串的公共前缀，因此有一个没有结果中的字符也不行。我们可以拿到数组中的一个元素，和其余的所有元素做对比，即可找到结果。
1、初始化结果为res为空字符串；
2、拿到resourceAry的第一项a,剩余项组成数组b；
3、迭代字符串a，在b中查找每一项的第i个是不是和a的第i个值完全相同；相同则第i项放入res，否则，直接跳出for循环；
4、返回结果res；
*/

/* function longestCommonPrefix (resourceAry) {
    let res = '';
    let [a, ...b] = resourceAry;
    for(let i = 0; i < a.length; i++) {
        const flag = b.every(item => (item[i] == a[i]));
        if(flag) {
            res = res + a[i];
        } else {
            return res;
        };
    };
}
console.log(longestCommonPrefix(['wqe', 'qaqz', 'qrqt'])) */


// 方法二

/*
1、当字符串数组长度为0时，直接返回''
2、初始化最长公共子串的ans的值为字符串数组的第一项
3、使用ans与字符串数组的其他项两两对比，找出公共前缀。最终结果即为最长公共前缀
4、如果过程中出现ans为空的情况，直接返回就好
*/

function longestCommonPrefix (resourceAry) {
    if(!resourceAry.length) return '';
    let ans = resourceAry[0];
    for(let i = 1; i < resourceAry.length; i++) {
        let j = 0;
        for(; j < resourceAry[i].length && j < ans.length; j++) {
            if(ans[j] == resourceAry[i][j]) {
                break;
            }
        }
        ans = ans.substr(0, j);
        if(ans == '') return ans;
    }
    return ans;
}