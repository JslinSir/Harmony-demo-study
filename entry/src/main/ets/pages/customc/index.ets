
import Navibar from '../../common/components/navibar'
// import Dialog from '../../common/components/dialog'
import Dialog from '../../common/components/dialog/index'


@Entry
@Component
struct CustomComponentIndex {
  @State name:string = 'hello'
  dialogAlertController: CustomDialogController = new CustomDialogController({
    builder: Dialog.AlertDialog({
      props:{
        title:'标题',
        message:'你好，鸿蒙',
        confirmText:'好的',
        onConfirm:this.onConfirm.bind(this)
      }
    }),
  })

  dialogConfirmController: CustomDialogController = new CustomDialogController({
    builder: Dialog.ConfirmDialog({
      props:{
        title:'confirm 标题',
        message:'你好，鸿蒙，我是confirm',
        confirmText:'好的',
        onConfirm:this.onConfirm.bind(this)
      }
    }),
  })


  onConfirm(){
    console.log(this.name)
    console.log('点击了确定')
  }


  build(){
    Column(){
      Navibar({title:'自定义组件'}){
        Button('对话框-alert')
          .onClick(()=>{
             this.dialogAlertController.open()
          })
          .margin({bottom:20})

        Button('对话框-confirm')
          .onClick(()=>{
            this.dialogConfirmController.open()
          })
      }
    }


  }
}