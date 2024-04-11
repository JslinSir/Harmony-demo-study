
import router from '@ohos.router';


@Entry
@Component
struct HomePage {
  @State message: string = 'Hello World'

  // 路由跳转
  handleClick(type:string) {
    console.info('Button onClick')
    // router.pushUrl({
    //   url:'pages/layout/index'
    // })
  }

  build() {
    Row() {
      Column() {
        Button('布局').onClick(()=>{
          router.pushUrl({
            url:'pages/layout/index'
          })
        })
        Row().height(20)
        Button('状态通信')

      }
      .width('100%')
    }
    .height('100%')
  }
}