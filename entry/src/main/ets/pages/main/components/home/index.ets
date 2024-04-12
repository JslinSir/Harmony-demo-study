
import router from '@ohos.router';


@Component
export  default  struct HomeView {

  build(){
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