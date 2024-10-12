import{H as t,s as e}from"./vanilla-jsoneditor.js";import{d as r,h as n,r as o,f as i,j as a,H as u,i as c,w as s,u as f,ac as l}from"./@vue.js";var p="object"==typeof global&&global&&global.Object===Object&&global,v="object"==typeof self&&self&&self.Object===Object&&self,b=p||v||Function("return this")(),d=b.Symbol,y=Object.prototype,h=y.hasOwnProperty,j=y.toString,g=d?d.toStringTag:void 0;var _=Object.prototype.toString;var m="[object Null]",O="[object Undefined]",w=d?d.toStringTag:void 0;function A(t){return null==t?void 0===t?O:m:w&&w in Object(t)?function(t){var e=h.call(t,g),r=t[g];try{t[g]=void 0;var n=!0}catch(i){}var o=j.call(t);return n&&(e?t[g]=r:delete t[g]),o}(t):function(t){return _.call(t)}(t)}var x="[object Symbol]";var S=/\s/;var E=/^\s+/;function z(t){return t&&t.slice(0,function(t){for(var e=t.length;e--&&S.test(t.charAt(e)););return e}(t)+1).replace(E,"")}function F(t){var e=typeof t;return null!=t&&("object"==e||"function"==e)}var P=NaN,T=/^[-+]0x[0-9a-f]+$/i,k=/^0b[01]+$/i,C=/^0o[0-7]+$/i,I=parseInt;function B(t){if("number"==typeof t)return t;if(function(t){return"symbol"==typeof t||function(t){return null!=t&&"object"==typeof t}(t)&&A(t)==x}(t))return P;if(F(t)){var e="function"==typeof t.valueOf?t.valueOf():t;t=F(e)?e+"":e}if("string"!=typeof t)return 0===t?t:+t;t=z(t);var r=k.test(t);return r||C.test(t)?I(t.slice(2),r?2:8):T.test(t)?P:+t}var M=function(){return b.Date.now()},U=Math.max,L=Math.min;function D(t,e,r){var n,o,i,a,u,c,s=0,f=!1,l=!1,p=!0;if("function"!=typeof t)throw new TypeError("Expected a function");function v(e){var r=n,i=o;return n=o=void 0,s=e,a=t.apply(i,r)}function b(t){var r=t-c;return void 0===c||r>=e||r<0||l&&t-s>=i}function d(){var t=M();if(b(t))return y(t);u=setTimeout(d,function(t){var r=e-(t-c);return l?L(r,i-(t-s)):r}(t))}function y(t){return u=void 0,p&&n?v(t):(n=o=void 0,a)}function h(){var t=M(),r=b(t);if(n=arguments,o=this,c=t,r){if(void 0===u)return function(t){return s=t,u=setTimeout(d,e),f?v(t):a}(c);if(l)return clearTimeout(u),u=setTimeout(d,e),v(c)}return void 0===u&&(u=setTimeout(d,e)),a}return e=B(e)||0,F(r)&&(f=!!r.leading,i=(l="maxWait"in r)?U(B(r.maxWait)||0,e):i,p="trailing"in r?!!r.trailing:p),h.cancel=function(){void 0!==u&&clearTimeout(u),s=0,n=c=o=u=void 0},h.flush=function(){return void 0===u?a:y(M())},h}var N="object"==typeof global&&global&&global.Object===Object&&global,$="object"==typeof self&&self&&self.Object===Object&&self,R=N||$||Function("return this")(),V=R.Symbol,W=Object.prototype,q=W.hasOwnProperty,J=W.toString,K=V?V.toStringTag:void 0;var G=Object.prototype.toString;var H="[object Null]",Q="[object Undefined]",X=V?V.toStringTag:void 0;function Y(t){return null==t?void 0===t?Q:H:X&&X in Object(t)?function(t){var e=q.call(t,K),r=t[K];try{t[K]=void 0;var n=!0}catch(i){}var o=J.call(t);return n&&(e?t[K]=r:delete t[K]),o}(t):function(t){return G.call(t)}(t)}function Z(t){return null!=t&&"object"==typeof t}var tt="[object Symbol]";function et(t){return"symbol"==typeof t||Z(t)&&Y(t)==tt}var rt=Array.isArray,nt=1/0,ot=V?V.prototype:void 0,it=ot?ot.toString:void 0;function at(t){if("string"==typeof t)return t;if(rt(t))return function(t,e){for(var r=-1,n=null==t?0:t.length,o=Array(n);++r<n;)o[r]=e(t[r],r,t);return o}(t,at)+"";if(et(t))return it?it.call(t):"";var e=t+"";return"0"==e&&1/t==-nt?"-0":e}function ut(t){var e=typeof t;return null!=t&&("object"==e||"function"==e)}function ct(t){return t}var st="[object AsyncFunction]",ft="[object Function]",lt="[object GeneratorFunction]",pt="[object Proxy]";function vt(t){if(!ut(t))return!1;var e=Y(t);return e==ft||e==lt||e==st||e==pt}var bt,dt=R["__core-js_shared__"],yt=(bt=/[^.]+$/.exec(dt&&dt.keys&&dt.keys.IE_PROTO||""))?"Symbol(src)_1."+bt:"";var ht=Function.prototype.toString;function jt(t){if(null!=t){try{return ht.call(t)}catch(e){}try{return t+""}catch(e){}}return""}var gt=/^\[object .+?Constructor\]$/,_t=Function.prototype,mt=Object.prototype,Ot=_t.toString,wt=mt.hasOwnProperty,At=RegExp("^"+Ot.call(wt).replace(/[\\^$.*+?()[\]{}|]/g,"\\$&").replace(/hasOwnProperty|(function).*?(?=\\\()| for .+?(?=\\\])/g,"$1.*?")+"$");function xt(t){return!(!ut(t)||function(t){return!!yt&&yt in t}(t))&&(vt(t)?At:gt).test(jt(t))}function St(t,e){var r=function(t,e){return null==t?void 0:t[e]}(t,e);return xt(r)?r:void 0}var Et=St(R,"WeakMap"),zt=Object.create,Ft=function(){function t(){}return function(e){if(!ut(e))return{};if(zt)return zt(e);t.prototype=e;var r=new t;return t.prototype=void 0,r}}();var Pt=Date.now;function Tt(t){return function(){return t}}var kt=function(){try{var t=St(Object,"defineProperty");return t({},"",{}),t}catch(e){}}(),Ct=kt?function(t,e){return kt(t,"toString",{configurable:!0,enumerable:!1,value:Tt(e),writable:!0})}:ct;var It=function(t){var e=0,r=0;return function(){var n=Pt(),o=16-(n-r);if(r=n,o>0){if(++e>=800)return arguments[0]}else e=0;return t.apply(void 0,arguments)}}(Ct);var Bt=9007199254740991,Mt=/^(?:0|[1-9]\d*)$/;function Ut(t,e){var r=typeof t;return!!(e=null!=e?e:Bt)&&("number"==r||"symbol"!=r&&Mt.test(t))&&t>-1&&t%1==0&&t<e}function Lt(t,e,r){"__proto__"==e&&kt?kt(t,e,{configurable:!0,enumerable:!0,value:r,writable:!0}):t[e]=r}function Dt(t,e){return t===e||t!=t&&e!=e}var Nt=Object.prototype.hasOwnProperty;function $t(t,e,r){var n=t[e];(!Nt.call(t,e)||!Dt(n,r)||void 0===r&&!(e in t))&&Lt(t,e,r)}function Rt(t,e,r,n){var o=!r;r||(r={});for(var i=-1,a=e.length;++i<a;){var u=e[i],c=n?n(r[u],t[u],u,r,t):void 0;void 0===c&&(c=t[u]),o?Lt(r,u,c):$t(r,u,c)}return r}var Vt=Math.max;function Wt(t,e){return It(function(t,e,r){return e=Vt(void 0===e?t.length-1:e,0),function(){for(var n=arguments,o=-1,i=Vt(n.length-e,0),a=Array(i);++o<i;)a[o]=n[e+o];o=-1;for(var u=Array(e+1);++o<e;)u[o]=n[o];return u[e]=r(a),function(t,e,r){switch(r.length){case 0:return t.call(e);case 1:return t.call(e,r[0]);case 2:return t.call(e,r[0],r[1]);case 3:return t.call(e,r[0],r[1],r[2])}return t.apply(e,r)}(t,this,u)}}(t,e,ct),t+"")}var qt=9007199254740991;function Jt(t){return"number"==typeof t&&t>-1&&t%1==0&&t<=qt}function Kt(t){return null!=t&&Jt(t.length)&&!vt(t)}function Gt(t){return Wt((function(e,r){var n=-1,o=r.length,i=o>1?r[o-1]:void 0,a=o>2?r[2]:void 0;for(i=t.length>3&&"function"==typeof i?(o--,i):void 0,a&&function(t,e,r){if(!ut(r))return!1;var n=typeof e;return!!("number"==n?Kt(r)&&Ut(e,r.length):"string"==n&&e in r)&&Dt(r[e],t)}(r[0],r[1],a)&&(i=o<3?void 0:i,o=1),e=Object(e);++n<o;){var u=r[n];u&&t(e,u,n,i)}return e}))}var Ht=Object.prototype;function Qt(t){var e=t&&t.constructor;return t===("function"==typeof e&&e.prototype||Ht)}function Xt(t){return Z(t)&&"[object Arguments]"==Y(t)}var Yt=Object.prototype,Zt=Yt.hasOwnProperty,te=Yt.propertyIsEnumerable,ee=Xt(function(){return arguments}())?Xt:function(t){return Z(t)&&Zt.call(t,"callee")&&!te.call(t,"callee")};var re="object"==typeof exports&&exports&&!exports.nodeType&&exports,ne=re&&"object"==typeof module&&module&&!module.nodeType&&module,oe=ne&&ne.exports===re?R.Buffer:void 0,ie=(oe?oe.isBuffer:void 0)||function(){return!1},ae={};function ue(t){return function(e){return t(e)}}ae["[object Float32Array]"]=ae["[object Float64Array]"]=ae["[object Int8Array]"]=ae["[object Int16Array]"]=ae["[object Int32Array]"]=ae["[object Uint8Array]"]=ae["[object Uint8ClampedArray]"]=ae["[object Uint16Array]"]=ae["[object Uint32Array]"]=!0,ae["[object Arguments]"]=ae["[object Array]"]=ae["[object ArrayBuffer]"]=ae["[object Boolean]"]=ae["[object DataView]"]=ae["[object Date]"]=ae["[object Error]"]=ae["[object Function]"]=ae["[object Map]"]=ae["[object Number]"]=ae["[object Object]"]=ae["[object RegExp]"]=ae["[object Set]"]=ae["[object String]"]=ae["[object WeakMap]"]=!1;var ce="object"==typeof exports&&exports&&!exports.nodeType&&exports,se=ce&&"object"==typeof module&&module&&!module.nodeType&&module,fe=se&&se.exports===ce&&N.process,le=function(){try{return se&&se.require&&se.require("util").types||fe&&fe.binding&&fe.binding("util")}catch(t){}}(),pe=le&&le.isTypedArray,ve=pe?ue(pe):function(t){return Z(t)&&Jt(t.length)&&!!ae[Y(t)]},be=Object.prototype.hasOwnProperty;function de(t,e){var r=rt(t),n=!r&&ee(t),o=!r&&!n&&ie(t),i=!r&&!n&&!o&&ve(t),a=r||n||o||i,u=a?function(t,e){for(var r=-1,n=Array(t);++r<t;)n[r]=e(r);return n}(t.length,String):[],c=u.length;for(var s in t)(e||be.call(t,s))&&(!a||!("length"==s||o&&("offset"==s||"parent"==s)||i&&("buffer"==s||"byteLength"==s||"byteOffset"==s)||Ut(s,c)))&&u.push(s);return u}function ye(t,e){return function(r){return t(e(r))}}var he=ye(Object.keys,Object),je=Object.prototype.hasOwnProperty;function ge(t){return Kt(t)?de(t):function(t){if(!Qt(t))return he(t);var e=[];for(var r in Object(t))je.call(t,r)&&"constructor"!=r&&e.push(r);return e}(t)}var _e=Object.prototype.hasOwnProperty;function me(t){if(!ut(t))return function(t){var e=[];if(null!=t)for(var r in Object(t))e.push(r);return e}(t);var e=Qt(t),r=[];for(var n in t)"constructor"==n&&(e||!_e.call(t,n))||r.push(n);return r}function Oe(t){return Kt(t)?de(t,!0):me(t)}var we=Gt((function(t,e,r,n){Rt(e,Oe(e),t,n)})),Ae=/\.|\[(?:[^[\]]*|(["'])(?:(?!\1)[^\\]|\\.)*?\1)\]/,xe=/^\w*$/;function Se(t,e){if(rt(t))return!1;var r=typeof t;return!("number"!=r&&"symbol"!=r&&"boolean"!=r&&null!=t&&!et(t))||(xe.test(t)||!Ae.test(t)||null!=e&&t in Object(e))}var Ee=St(Object,"create");var ze=Object.prototype.hasOwnProperty;var Fe=Object.prototype.hasOwnProperty;function Pe(t){var e=-1,r=null==t?0:t.length;for(this.clear();++e<r;){var n=t[e];this.set(n[0],n[1])}}function Te(t,e){for(var r=t.length;r--;)if(Dt(t[r][0],e))return r;return-1}Pe.prototype.clear=function(){this.__data__=Ee?Ee(null):{},this.size=0},Pe.prototype.delete=function(t){var e=this.has(t)&&delete this.__data__[t];return this.size-=e?1:0,e},Pe.prototype.get=function(t){var e=this.__data__;if(Ee){var r=e[t];return"__lodash_hash_undefined__"===r?void 0:r}return ze.call(e,t)?e[t]:void 0},Pe.prototype.has=function(t){var e=this.__data__;return Ee?void 0!==e[t]:Fe.call(e,t)},Pe.prototype.set=function(t,e){var r=this.__data__;return this.size+=this.has(t)?0:1,r[t]=Ee&&void 0===e?"__lodash_hash_undefined__":e,this};var ke=Array.prototype.splice;function Ce(t){var e=-1,r=null==t?0:t.length;for(this.clear();++e<r;){var n=t[e];this.set(n[0],n[1])}}Ce.prototype.clear=function(){this.__data__=[],this.size=0},Ce.prototype.delete=function(t){var e=this.__data__,r=Te(e,t);return!(r<0)&&(r==e.length-1?e.pop():ke.call(e,r,1),--this.size,!0)},Ce.prototype.get=function(t){var e=this.__data__,r=Te(e,t);return r<0?void 0:e[r][1]},Ce.prototype.has=function(t){return Te(this.__data__,t)>-1},Ce.prototype.set=function(t,e){var r=this.__data__,n=Te(r,t);return n<0?(++this.size,r.push([t,e])):r[n][1]=e,this};var Ie=St(R,"Map");function Be(t,e){var r=t.__data__;return function(t){var e=typeof t;return"string"==e||"number"==e||"symbol"==e||"boolean"==e?"__proto__"!==t:null===t}(e)?r["string"==typeof e?"string":"hash"]:r.map}function Me(t){var e=-1,r=null==t?0:t.length;for(this.clear();++e<r;){var n=t[e];this.set(n[0],n[1])}}Me.prototype.clear=function(){this.size=0,this.__data__={hash:new Pe,map:new(Ie||Ce),string:new Pe}},Me.prototype.delete=function(t){var e=Be(this,t).delete(t);return this.size-=e?1:0,e},Me.prototype.get=function(t){return Be(this,t).get(t)},Me.prototype.has=function(t){return Be(this,t).has(t)},Me.prototype.set=function(t,e){var r=Be(this,t),n=r.size;return r.set(t,e),this.size+=r.size==n?0:1,this};var Ue="Expected a function";function Le(t,e){if("function"!=typeof t||null!=e&&"function"!=typeof e)throw new TypeError(Ue);var r=function(){var n=arguments,o=e?e.apply(this,n):n[0],i=r.cache;if(i.has(o))return i.get(o);var a=t.apply(this,n);return r.cache=i.set(o,a)||i,a};return r.cache=new(Le.Cache||Me),r}Le.Cache=Me;var De=/[^.[\]]+|\[(?:(-?\d+(?:\.\d+)?)|(["'])((?:(?!\2)[^\\]|\\.)*?)\2)\]|(?=(?:\.|\[\])(?:\.|\[\]|$))/g,Ne=/\\(\\)?/g,$e=function(t){var e=Le(t,(function(t){return 500===r.size&&r.clear(),t})),r=e.cache;return e}((function(t){var e=[];return 46===t.charCodeAt(0)&&e.push(""),t.replace(De,(function(t,r,n,o){e.push(n?o.replace(Ne,"$1"):r||t)})),e}));function Re(t,e){return rt(t)?t:Se(t,e)?[t]:$e(function(t){return null==t?"":at(t)}(t))}var Ve=1/0;function We(t){if("string"==typeof t||et(t))return t;var e=t+"";return"0"==e&&1/t==-Ve?"-0":e}function qe(t,e){for(var r=0,n=(e=Re(e,t)).length;null!=t&&r<n;)t=t[We(e[r++])];return r&&r==n?t:void 0}const Je=ye(Object.getPrototypeOf,Object);var Ke="[object Object]",Ge=Function.prototype,He=Object.prototype,Qe=Ge.toString,Xe=He.hasOwnProperty,Ye=Qe.call(Object);function Ze(t){var e=this.__data__=new Ce(t);this.size=e.size}Ze.prototype.clear=function(){this.__data__=new Ce,this.size=0},Ze.prototype.delete=function(t){var e=this.__data__,r=e.delete(t);return this.size=e.size,r},Ze.prototype.get=function(t){return this.__data__.get(t)},Ze.prototype.has=function(t){return this.__data__.has(t)},Ze.prototype.set=function(t,e){var r=this.__data__;if(r instanceof Ce){var n=r.__data__;if(!Ie||n.length<199)return n.push([t,e]),this.size=++r.size,this;r=this.__data__=new Me(n)}return r.set(t,e),this.size=r.size,this};var tr="object"==typeof exports&&exports&&!exports.nodeType&&exports,er=tr&&"object"==typeof module&&module&&!module.nodeType&&module,rr=er&&er.exports===tr?R.Buffer:void 0,nr=rr?rr.allocUnsafe:void 0;function or(t,e){if(e)return t.slice();var r=t.length,n=nr?nr(r):new t.constructor(r);return t.copy(n),n}var ir=Object.prototype.propertyIsEnumerable,ar=Object.getOwnPropertySymbols,ur=ar?function(t){return null==t?[]:(t=Object(t),function(t,e){for(var r=-1,n=null==t?0:t.length,o=0,i=[];++r<n;){var a=t[r];e(a,r,t)&&(i[o++]=a)}return i}(ar(t),(function(e){return ir.call(t,e)})))}:function(){return[]};function cr(t){return function(t,e,r){var n=e(t);return rt(t)?n:function(t,e){for(var r=-1,n=e.length,o=t.length;++r<n;)t[o+r]=e[r];return t}(n,r(t))}(t,ge,ur)}var sr=St(R,"DataView"),fr=St(R,"Promise"),lr=St(R,"Set"),pr="[object Map]",vr="[object Promise]",br="[object Set]",dr="[object WeakMap]",yr="[object DataView]",hr=jt(sr),jr=jt(Ie),gr=jt(fr),_r=jt(lr),mr=jt(Et),Or=Y;(sr&&Or(new sr(new ArrayBuffer(1)))!=yr||Ie&&Or(new Ie)!=pr||fr&&Or(fr.resolve())!=vr||lr&&Or(new lr)!=br||Et&&Or(new Et)!=dr)&&(Or=function(t){var e=Y(t),r="[object Object]"==e?t.constructor:void 0,n=r?jt(r):"";if(n)switch(n){case hr:return yr;case jr:return pr;case gr:return vr;case _r:return br;case mr:return dr}return e});const wr=Or;var Ar=Object.prototype.hasOwnProperty;var xr=R.Uint8Array;function Sr(t){var e=new t.constructor(t.byteLength);return new xr(e).set(new xr(t)),e}var Er=/\w*$/;var zr=V?V.prototype:void 0,Fr=zr?zr.valueOf:void 0;function Pr(t,e){var r=e?Sr(t.buffer):t.buffer;return new t.constructor(r,t.byteOffset,t.length)}var Tr="[object Boolean]",kr="[object Date]",Cr="[object Map]",Ir="[object Number]",Br="[object RegExp]",Mr="[object Set]",Ur="[object String]",Lr="[object Symbol]",Dr="[object ArrayBuffer]",Nr="[object DataView]",$r="[object Float32Array]",Rr="[object Float64Array]",Vr="[object Int8Array]",Wr="[object Int16Array]",qr="[object Int32Array]",Jr="[object Uint8Array]",Kr="[object Uint8ClampedArray]",Gr="[object Uint16Array]",Hr="[object Uint32Array]";function Qr(t,e,r){var n=t.constructor;switch(e){case Dr:return Sr(t);case Tr:case kr:return new n(+t);case Nr:return function(t,e){var r=Sr(t.buffer);return new t.constructor(r,t.byteOffset,t.byteLength)}(t);case $r:case Rr:case Vr:case Wr:case qr:case Jr:case Kr:case Gr:case Hr:return Pr(t,r);case Cr:return new n;case Ir:case Ur:return new n(t);case Br:return function(t){var e=new t.constructor(t.source,Er.exec(t));return e.lastIndex=t.lastIndex,e}(t);case Mr:return new n;case Lr:return function(t){return Fr?Object(Fr.call(t)):{}}(t)}}function Xr(t){return"function"!=typeof t.constructor||Qt(t)?{}:Ft(Je(t))}var Yr=le&&le.isMap,Zr=Yr?ue(Yr):function(t){return Z(t)&&"[object Map]"==wr(t)};var tn=le&&le.isSet,en=tn?ue(tn):function(t){return Z(t)&&"[object Set]"==wr(t)},rn=1,nn="[object Arguments]",on="[object Function]",an="[object GeneratorFunction]",un="[object Object]",cn={};function sn(t,e,r,n,o,i){var a,u=e&rn;if(void 0!==a)return a;if(!ut(t))return t;var c=rt(t);if(c)a=function(t){var e=t.length,r=new t.constructor(e);return e&&"string"==typeof t[0]&&Ar.call(t,"index")&&(r.index=t.index,r.input=t.input),r}(t);else{var s=wr(t),f=s==on||s==an;if(ie(t))return or(t,u);if(s==un||s==nn||f&&!o)a=f?{}:Xr(t);else{if(!cn[s])return o?t:{};a=Qr(t,s,u)}}i||(i=new Ze);var l=i.get(t);if(l)return l;i.set(t,a),en(t)?t.forEach((function(n){a.add(sn(n,e,r,n,t,i))})):Zr(t)&&t.forEach((function(n,o){a.set(o,sn(n,e,r,o,t,i))}));var p=c?void 0:cr(t);return function(t,e){for(var r=-1,n=null==t?0:t.length;++r<n&&!1!==e(t[r],r,t););}(p||t,(function(n,o){p&&(n=t[o=n]),$t(a,o,sn(n,e,r,o,t,i))})),a}cn[nn]=cn["[object Array]"]=cn["[object ArrayBuffer]"]=cn["[object DataView]"]=cn["[object Boolean]"]=cn["[object Date]"]=cn["[object Float32Array]"]=cn["[object Float64Array]"]=cn["[object Int8Array]"]=cn["[object Int16Array]"]=cn["[object Int32Array]"]=cn["[object Map]"]=cn["[object Number]"]=cn[un]=cn["[object RegExp]"]=cn["[object Set]"]=cn["[object String]"]=cn["[object Symbol]"]=cn["[object Uint8Array]"]=cn["[object Uint8ClampedArray]"]=cn["[object Uint16Array]"]=cn["[object Uint32Array]"]=!0,cn["[object Error]"]=cn[on]=cn["[object WeakMap]"]=!1;var fn=1,ln=4;function pn(t){var e=-1,r=null==t?0:t.length;for(this.__data__=new Me;++e<r;)this.add(t[e])}function vn(t,e){for(var r=-1,n=null==t?0:t.length;++r<n;)if(e(t[r],r,t))return!0;return!1}function bn(t,e){return t.has(e)}pn.prototype.add=pn.prototype.push=function(t){return this.__data__.set(t,"__lodash_hash_undefined__"),this},pn.prototype.has=function(t){return this.__data__.has(t)};var dn=1,yn=2;function hn(t,e,r,n,o,i){var a=r&dn,u=t.length,c=e.length;if(u!=c&&!(a&&c>u))return!1;var s=i.get(t),f=i.get(e);if(s&&f)return s==e&&f==t;var l=-1,p=!0,v=r&yn?new pn:void 0;for(i.set(t,e),i.set(e,t);++l<u;){var b=t[l],d=e[l];if(n)var y=a?n(d,b,l,e,t,i):n(b,d,l,t,e,i);if(void 0!==y){if(y)continue;p=!1;break}if(v){if(!vn(e,(function(t,e){if(!bn(v,e)&&(b===t||o(b,t,r,n,i)))return v.push(e)}))){p=!1;break}}else if(b!==d&&!o(b,d,r,n,i)){p=!1;break}}return i.delete(t),i.delete(e),p}function jn(t){var e=-1,r=Array(t.size);return t.forEach((function(t,n){r[++e]=[n,t]})),r}function gn(t){var e=-1,r=Array(t.size);return t.forEach((function(t){r[++e]=t})),r}var _n=1,mn=2,On="[object Boolean]",wn="[object Date]",An="[object Error]",xn="[object Map]",Sn="[object Number]",En="[object RegExp]",zn="[object Set]",Fn="[object String]",Pn="[object Symbol]",Tn="[object ArrayBuffer]",kn="[object DataView]",Cn=V?V.prototype:void 0,In=Cn?Cn.valueOf:void 0;var Bn=1,Mn=Object.prototype.hasOwnProperty;var Un=1,Ln="[object Arguments]",Dn="[object Array]",Nn="[object Object]",$n=Object.prototype.hasOwnProperty;function Rn(t,e,r,n,o,i){var a=rt(t),u=rt(e),c=a?Dn:wr(t),s=u?Dn:wr(e),f=(c=c==Ln?Nn:c)==Nn,l=(s=s==Ln?Nn:s)==Nn,p=c==s;if(p&&ie(t)){if(!ie(e))return!1;a=!0,f=!1}if(p&&!f)return i||(i=new Ze),a||ve(t)?hn(t,e,r,n,o,i):function(t,e,r,n,o,i,a){switch(r){case kn:if(t.byteLength!=e.byteLength||t.byteOffset!=e.byteOffset)return!1;t=t.buffer,e=e.buffer;case Tn:return!(t.byteLength!=e.byteLength||!i(new xr(t),new xr(e)));case On:case wn:case Sn:return Dt(+t,+e);case An:return t.name==e.name&&t.message==e.message;case En:case Fn:return t==e+"";case xn:var u=jn;case zn:var c=n&_n;if(u||(u=gn),t.size!=e.size&&!c)return!1;var s=a.get(t);if(s)return s==e;n|=mn,a.set(t,e);var f=hn(u(t),u(e),n,o,i,a);return a.delete(t),f;case Pn:if(In)return In.call(t)==In.call(e)}return!1}(t,e,c,r,n,o,i);if(!(r&Un)){var v=f&&$n.call(t,"__wrapped__"),b=l&&$n.call(e,"__wrapped__");if(v||b){var d=v?t.value():t,y=b?e.value():e;return i||(i=new Ze),o(d,y,r,n,i)}}return!!p&&(i||(i=new Ze),function(t,e,r,n,o,i){var a=r&Bn,u=cr(t),c=u.length;if(c!=cr(e).length&&!a)return!1;for(var s=c;s--;){var f=u[s];if(!(a?f in e:Mn.call(e,f)))return!1}var l=i.get(t),p=i.get(e);if(l&&p)return l==e&&p==t;var v=!0;i.set(t,e),i.set(e,t);for(var b=a;++s<c;){var d=t[f=u[s]],y=e[f];if(n)var h=a?n(y,d,f,e,t,i):n(d,y,f,t,e,i);if(!(void 0===h?d===y||o(d,y,r,n,i):h)){v=!1;break}b||(b="constructor"==f)}if(v&&!b){var j=t.constructor,g=e.constructor;j!=g&&"constructor"in t&&"constructor"in e&&!("function"==typeof j&&j instanceof j&&"function"==typeof g&&g instanceof g)&&(v=!1)}return i.delete(t),i.delete(e),v}(t,e,r,n,o,i))}function Vn(t,e,r,n,o){return t===e||(null==t||null==e||!Z(t)&&!Z(e)?t!=t&&e!=e:Rn(t,e,r,n,Vn,o))}var Wn=1,qn=2;function Jn(t){return t==t&&!ut(t)}function Kn(t,e){return function(r){return null!=r&&(r[t]===e&&(void 0!==e||t in Object(r)))}}function Gn(t){var e=function(t){for(var e=ge(t),r=e.length;r--;){var n=e[r],o=t[n];e[r]=[n,o,Jn(o)]}return e}(t);return 1==e.length&&e[0][2]?Kn(e[0][0],e[0][1]):function(r){return r===t||function(t,e,r,n){var o=r.length,i=o;if(null==t)return!i;for(t=Object(t);o--;){var a=r[o];if(a[2]?a[1]!==t[a[0]]:!(a[0]in t))return!1}for(;++o<i;){var u=(a=r[o])[0],c=t[u],s=a[1];if(a[2]){if(void 0===c&&!(u in t))return!1}else{var f=new Ze;if(!Vn(s,c,Wn|qn,n,f))return!1}}return!0}(r,0,e)}}function Hn(t,e){return null!=t&&e in Object(t)}function Qn(t,e){return null!=t&&function(t,e,r){for(var n=-1,o=(e=Re(e,t)).length,i=!1;++n<o;){var a=We(e[n]);if(!(i=null!=t&&r(t,a)))break;t=t[a]}return i||++n!=o?i:!!(o=null==t?0:t.length)&&Jt(o)&&Ut(a,o)&&(rt(t)||ee(t))}(t,e,Hn)}var Xn=1,Yn=2;function Zn(t,e){return Se(t)&&Jn(e)?Kn(We(t),e):function(r){var n=function(t,e,r){var n=null==t?void 0:qe(t,e);return void 0===n?r:n}(r,t);return void 0===n&&n===e?Qn(r,t):Vn(e,n,Xn|Yn)}}function to(t){return Se(t)?function(t){return function(e){return null==e?void 0:e[t]}}(We(t)):function(t){return function(e){return qe(e,t)}}(t)}var eo=function(t,e,r){for(var n=-1,o=Object(t),i=r(t),a=i.length;a--;){var u=i[++n];if(!1===e(o[u],u,o))break}return t};function ro(t,e,r){(void 0!==r&&!Dt(t[e],r)||void 0===r&&!(e in t))&&Lt(t,e,r)}function no(t,e){if(("constructor"!==e||"function"!=typeof t[e])&&"__proto__"!=e)return t[e]}function oo(t,e,r,n,o,i,a){var u=no(t,r),c=no(e,r),s=a.get(c);if(s)ro(t,r,s);else{var f=i?i(u,c,r+"",t,e,a):void 0,l=void 0===f;if(l){var p=rt(c),v=!p&&ie(c),b=!p&&!v&&ve(c);f=c,p||v||b?rt(u)?f=u:function(t){return Z(t)&&Kt(t)}(u)?f=function(t,e){var r=-1,n=t.length;for(e||(e=Array(n));++r<n;)e[r]=t[r];return e}(u):v?(l=!1,f=or(c,!0)):b?(l=!1,f=Pr(c,!0)):f=[]:function(t){if(!Z(t)||Y(t)!=Ke)return!1;var e=Je(t);if(null===e)return!0;var r=Xe.call(e,"constructor")&&e.constructor;return"function"==typeof r&&r instanceof r&&Qe.call(r)==Ye}(c)||ee(c)?(f=u,ee(u)?f=function(t){return Rt(t,Oe(t))}(u):(!ut(u)||vt(u))&&(f=Xr(c))):l=!1}l&&(a.set(c,f),o(f,c,n,i,a),a.delete(c)),ro(t,r,f)}}function io(t,e,r,n,o){t!==e&&eo(e,(function(i,a){if(o||(o=new Ze),ut(i))oo(t,e,a,r,io,n,o);else{var u=n?n(no(t,a),i,a+"",t,e,o):void 0;void 0===u&&(u=i),ro(t,a,u)}}),Oe)}var ao=Gt((function(t,e,r,n){io(t,e,r,n)}));function uo(t,e){var r={};return e=function(t){return"function"==typeof t?t:null==t?ct:"object"==typeof t?rt(t)?Zn(t[0],t[1]):Gn(t):to(t)}(e),function(t,e){t&&eo(t,e,ge)}(t,(function(t,n,o){Lt(r,e(t,n,o),t)})),r}const co=new RegExp("([\\p{Ll}\\d])(\\p{Lu})","gu"),so=new RegExp("(\\p{Lu})([\\p{Lu}][\\p{Ll}])","gu"),fo=new RegExp("(\\d)\\p{Ll}|(\\p{L})\\d","u"),lo=/[^\p{L}\d]+/giu,po="$1\0$2",vo="";function bo(t){let e=t.trim();e=e.replace(co,po).replace(so,po),e=e.replace(lo,"\0");let r=0,n=e.length;for(;"\0"===e.charAt(r);)r++;if(r===n)return[];for(;"\0"===e.charAt(n-1);)n--;return e.slice(r,n).split(/\0/g)}function yo(t){var e;const r=bo(t);for(let n=0;n<r.length;n++){const t=r[n],o=fo.exec(t);if(o){const i=o.index+(null!=(e=o[1])?e:o[2]).length;r.splice(n,1,t.slice(0,i),t.slice(i))}}return r}function ho(t,e){const[r,n,o]=function(t,e={}){var r,n,o;const i=null!=(r=e.split)?r:e.separateNumbers?yo:bo,a=null!=(n=e.prefixCharacters)?n:vo,u=null!=(o=e.suffixCharacters)?o:vo;let c=0,s=t.length;for(;c<t.length;){const e=t.charAt(c);if(!a.includes(e))break;c++}for(;s>c;){const e=s-1,r=t.charAt(e);if(!u.includes(r))break;s=e}return[t.slice(0,c),i(t.slice(c,s)),t.slice(s)]}(t,e),i=function(t){return e=>e.toLocaleLowerCase(t)}(void 0),a=function(t){return e=>e.toLocaleUpperCase(t)}(void 0),u=function(t,e){return(r,n)=>{const o=r[0];return(n>0&&o>="0"&&o<="9"?"_"+o:e(o))+t(r.slice(1))}}(i,a);return r+n.map(((t,e)=>0===e?i(t):u(t,e))).join("")+o}const jo=t=>/.+-.+/.test(t)?ho(t):t;function go(t,e){const r=Object.create(null),n=t.split(",");for(let o=0;o<n.length;o++)r[n[o]]=!0;return t=>!!r[t]}const _o=go("String,Number,Boolean,Function,Symbol,BigInt");function mo(t,e){let r;const n=function(t){const e=null==t?void 0:t.toString().match(/^\s*function (\w+)/);return e?e[1]:null===t?"null":""}(e);if(_o(n)){const o=typeof t;r=o===n.toLowerCase(),!r&&"object"===o&&(r=t instanceof e)}else r="Object"===n?ut(t):"Array"===n?Array.isArray(t):"null"===n?null===t:t instanceof e;return{valid:r,expectedType:n}}function Oo(t,{mergeObject:e,mergeFunction:r}){const n=[];for(let i=t.length-1;i>=0;i--)n.push(t[i]);const o=r?(t,e)=>"function"==typeof t&&"function"==typeof e?r(e,t):void 0:void 0;return"deep"===e?ao(...n,o):we(...n,o)}function wo(t,{mergeFunction:e}){return t.reduce(e,(()=>{}))}function Ao(t,e={}){const{type:r,default:n,defaultIsDynamic:o=!1,required:i=!1,validator:a,camelizeObjectKeys:u=!1,mergeObjectApplyOnlyToDefault:c=!1,mergeFunctionApplyOnlyToDefault:s=!0}=e;let{mergeObject:f="deep",mergeFunction:l=!1}=e;const p=[];let v,b=!1,d=!1;const y=t=>{if(void 0!==t){!function({prop:t,type:e,validator:r}){if(![void 0,null].includes(t)&&e){let r=!1;const n=Array.isArray(e)?e:[e],o=[];for(let e=0;e<n.length&&!r;e++){const{valid:i,expectedType:a}=mo(t,n[e]);o.push(a||""),r=i}if(!r)throw new TypeError("Invalid prop: type check failed, expecting [".concat(o.join(", "),"], receiving: ").concat(t))}if(r&&!r(t))throw new Error("Invalid prop: validator check failed, receiving: ".concat(t))}({type:r,prop:t,validator:a});const e=(t=>"Object"===Object.prototype.toString.call(t).slice(8,-1))(t);return b=e,d="function"==typeof t,e?(t=function(t){return sn(t,fn|ln)}(t),u?uo(t,((t,e)=>jo(e))):t):t}};for(const h of t)p.push(y(h));if(o){if("function"!=typeof n)throw new TypeError("Invalid option: options.default should be Function when options.defaultIsDynamic enabled, receiving: ".concat(n))}else p.push(y(n));b||(f=!1,d||(l=!1));for(let h=0;h<p.length;h++){const t=p[h];if(void 0!==t){v=h===p.length-1?t:f?Oo(c?[t,n]:p,{mergeObject:f,mergeFunction:l}):l?wo(s?[t,n]:p,{mergeFunction:l}):t;break}}if(i&&[void 0,null].includes(v))throw new Error("Missing required prop");return o?Ao(t,{...e,default:n(v),defaultIsDynamic:!1}):v}function xo(t){const e=Array.from(jo(t));return e[0]=e[0].toUpperCase(),e.unshift("o","n"),e.join("")}const So="JsonEditorVue",Eo={},zo={},Fo="modelValue",Po="update:modelValue",To=["mainMenuBar","navigationBar","statusBar","askToFormat","readOnly","escapeControlCharacters","escapeUnicodeCharacters","flattenColumns"],ko={[Fo]:{},mode:{type:String},debounce:{type:Number},stringified:{type:Boolean,default:void 0},...Object.fromEntries(To.map((t=>[t,{type:Boolean,default:void 0}])))},Co=r({name:So,install(t,e){const r=function(t,{props:e=[],camelizePropNames:r=!1}={}){const n={props:{},attrs:{},listeners:{},hooks:{},slots:{}};let o;if(Array.isArray(e))o=r?e.map((t=>jo(t))):e;else if(r){o=[];for(const t in e)o.push(jo(t))}else o=Object.keys(e);for(const i in t)if(i.startsWith("@")){const e=i.substring(1);if(e.startsWith("vue:"))n.hooks[xo(e.replace("vue:","vnode-"))]=t[i];else{if(e.startsWith("vnode"))throw new Error("@vnode-* hooks are no longer supported. Use the vue: prefix instead. For example, @vnode-mounted should be changed to @vue:mounted. @vnode-* hooks support has been removed in Vue 3.4.");n.listeners[xo(e)]=t[i]}}else if(i.startsWith("#")){const e=i.substring(1);e&&(n.slots[e]=t[i])}else{const e=r?jo(i):i;o.includes(e)?n.props[e]=t[i]:n.attrs[i]=t[i]}return n}(e||{},{props:ko});Object.assign(Eo,r.props),Object.assign(zo,r.attrs),t.component(So,this)},props:ko,emits:{[Po]:t=>!0,"update:mode":function(t){return!0}},setup(r,{attrs:p,emit:v,expose:b}){var d;const y=null==(d=n())?void 0:d.proxy,h=o(),j=o(!1),g=o();i((()=>{var t;g.value=Ao([r.mode,Eo.mode],{type:String}),null==(t=h.value)||t.updateProps({mode:g.value||e.tree})}));const _=t=>{v("update:mode",t)};void 0!==Eo.mode&&void 0===r.mode&&_(Eo.mode);const m=a((()=>Ao([r.debounce,Eo.debounce,100],{type:Number}))),O=a((()=>Ao([r.stringified,Eo.stringified,!0],{type:Boolean})));let w=JSON.parse;const A=D((t=>{j.value=!0,!O.value&&t.text&&(h.value&&!h.value.validate()&&(t.json=w(t.text)),t.text=void 0),v(Po,void 0===t.text?t.json:t.text)}),m.value),x=(t,e)=>(...r)=>{t(...r),e(...r)};return null==b||b({jsonEditor:h}),u((()=>{var t;null==(t=h.value)||t.destroy()})),c((()=>{var e;const n=Ao([r[Fo],Eo[Fo]]),o=Object.fromEntries(Array.from(To,(t=>[t,Ao([r[t],Eo[t]])])).filter((([,t])=>void 0!==t))),i=Ao([o,p,zo,{onChange:A,onChangeMode:_,mode:g.value,...void 0!==n&&{content:{["string"==typeof n&&"text"===g.value&&O.value?"text":"json"]:n}}}],{camelizeObjectKeys:!0,mergeFunction:x,type:Object});w=(null==(e=i.parser)?void 0:e.parse)||JSON.parse,h.value=new t({target:null==y?void 0:y.$refs.jsonEditorRef,props:i}),s((()=>r[Fo]),(t=>{j.value?j.value=!1:h.value&&h.value.set([void 0,""].includes(t)?{text:""}:{["string"==typeof t&&"text"===g.value&&O.value?"text":"json"]:t})}),{deep:!0}),s((()=>Array.from(To,(t=>r[t]))),(t=>{var e;null==(e=h.value)||e.updateProps(Object.fromEntries(Array.from(t,((t,e)=>[To[e],t])).filter((([,t])=>void 0!==t))))})),s((()=>p),(t=>{var e,r;const n={};(t.onChange||t["on-change"])&&(n.onChange=A),(t.onChangeMode||t["on-change-mode"])&&(n.onChangeMode=_),w=(null==(e=t.parser)?void 0:e.parse)||JSON.parse,null==(r=h.value)||r.updateProps(Object.getOwnPropertyNames(n).length>0?Ao([t,n],{camelizeObjectKeys:!0,mergeFunction:x,type:Object}):t)}),{deep:!0}),b||(b=t=>{for(const e in t)y[e]=f(t[e])})({jsonEditor:h})})),()=>l("div",{ref:"jsonEditorRef"})}});export{Co as e};