/*
1、初始值 ary：当前的不连续子串
        max：最大的长度
2、迭代原始字符串s
    当前项为s[i]
    在数组中查找当前项s[i]
    找到则删除ary的0-index项
    把当前项push到数组ary
    max取值max和ary.length中较大的
3、返回max值
*/

function lengthOfLongestSubstring (s) {
    let ary = [], max = 0;
    for(let i = 0; i< s.length; i++) {
        let index = ary.indexOf(s[i]);
        if(index != -1) {
            ary.splice(0, index + 1);
        }
        ary.push(s[i]);
        max = Math.max(max, ary.length);
    };
    return max;
};

console.log(lengthOfLongestSubstring('ttttdtstf'));