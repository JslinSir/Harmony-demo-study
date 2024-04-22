
import router from '@ohos.router';
import { builderText } from './build'


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
          .onClick(()=>{
            router.pushUrl({
              url:'pages/message/index'
            })
          })
        Row().height(20)
        Button('基础组件使用').onClick(()=>{
          router.pushUrl({
            url:'pages/basec/index'
          })
        })
        Row().height(20)
        Button('自定义组件').onClick(()=>{
          router.pushUrl({
            url:'pages/customc/index'
          })
        })



      }
      .width('100%')
    }
    .height('100%')
  }



}