

@Component
struct MyComponent {
  @Prop name:string;

  build() {
      Text(`我是子组件：${this.name}`)
        .fontSize(16)
        .margin({top:30})
  }
}

@Entry
@Component
struct PropsCompoent {
  @State name :string = '你好，鸿蒙'

  build(){
    Column(){
      Text(`我是父组件：${this.name}`)
      MyComponent({name:this.name})
      Divider().height(40)
      Button('点击更改 父组件状态')
        .onClick(()=>{
        this.name = this.name === '你好，鸿蒙' ? '孩子，我是你爸爸' : '你好，鸿蒙'
      })
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')

  }
}