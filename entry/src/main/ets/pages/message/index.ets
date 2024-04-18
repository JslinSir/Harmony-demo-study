import router from '@ohos.router';
@Entry
@Component
struct MessagePage {


  handleClick(type){
    console.log('13213')
    router.pushUrl({
      url:`pages/message/${type}`
    })
  }

  build(){
     Column(){
       Button('父子通信')
         .onClick(()=>this.handleClick('props'))
     }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width('100%')
    .height('100%')

  }
}