
// 定义 person 属性
interface  Iperson {
  name?:string;
  age?:number;
}

// Person 类
export  class  Person {
  // Person 属性
  name:string;
  age:number;
  // 初始化时候给 属性复制
  constructor({name,age}:Iperson) {
    this.name = name
    this.age = age
  }

  // Person 下的方法
  say(){
    console.log(`我叫：${this.name},今年${this.age}`)
  }

}


export  class  Student extends  Person {
  constructor({name,age}:Iperson) {
    super({name,age})
  }
  // 重写say
  say(){
    // super.say()
    console.log(`我叫：${this.name},今年${this.age}，我是一名学生`)
  }

  // 子类私有方法
  sunde(){
    console.log(`我叫：${this.name},今年${this.age}，我还会唱哥`)
  }
}