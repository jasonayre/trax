Number.prototype.padZero = function(len){
 var s = String(this), c = '0';
 len = len || 2;
 while(s.length < len) s = c + s;
 return s;
};