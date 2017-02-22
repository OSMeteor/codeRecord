###nodejs es6
---
####node for class 
* es5 class 
* eg: [https://github.com/addyosmani/es6-equivalents-in-es5](https://github.com/addyosmani/es6-equivalents-in-es5)
* [https://www.phpied.com/3-ways-to-define-a-javascript-class/](https://www.phpied.com/3-ways-to-define-a-javascript-class/)

#####es6 class 
``` javascript
class User{
  constructor( username ,email,pwd){
     this.username=username;
     this.email=email;
     this.pwd=pwd;
    }
    static getUserName(){
          return 'this is a static function';
    }
    getEmail(){
      return this.email;
    }
}
//  静态方法不继承
class memUser extends User{
   constructor(username ,email,pwd,level){
     super(username,email,pwd);
       this.level=level;
   }

}

let meteor=new User("meteor",'meteor@qq.com ','123456')
console.log(meteor,User.getUserName());
let mmuser1=new memUser("meteor1",'meteor1@qq.com ','123456',100);
console.log(meteor,mmuser1.getEmail())
console.log(mmuser1);
```

#####es5 class 
```
function UserEs5 (username,email,pwd) {
    this.username=username;
    this.email=email;
    this.pwd=pwd;
    this.aa=this.getEmail();
}

UserEs5.prototype.getEmail = function() {
    return this.email;
};

var es5user=new UserEs5("meteor",'meteor@qq.com ','123456')

console.log(es5user,es5user.getEmail(),es5user.aa)
```
###others
```
//  Set  Map  weakSet WeakMap

/*
//call apply  bind


var myobj={num:13}
var addThis=function (a,b,c) {
  return this.num+a+b+c;
}

var nmyobj=addThis.call(myobj,1,2,3);
// console.log(nmyobj)


var arrObj=[1,2,63];

// console.log(addThis.apply(myobj,arrObj));
// console.log(addThis.bind(myobj,1,2,3)())

// console.log(addThis.bind(myobj,arrObj)())
console.log(addThis.bind(myobj)(1,2,3))
```


