
import router from '@ohos.router';
import { builderText } from './build'
import Dialog from '../../../../common/components/dialog'

@Component
export  default  struct HomeView {
  name:String = '123'
  dialogController: CustomDialogController = new CustomDialogController({
    builder: Dialog.AlertDialog({
      title:'标题',
      message:'你好，鸿蒙',

    }),
  })
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
        builderText({
          text:'我是builder',
          onClick:(event)=>{
            console.log('event:',JSON.stringify(event))
            console.log('name:',this.name)
          }
        })

        Button('弹窗').onClick(()=>{
          this.dialogController.open()
        })
      }
      .width('100%')
    }
    .height('100%')
  }



}