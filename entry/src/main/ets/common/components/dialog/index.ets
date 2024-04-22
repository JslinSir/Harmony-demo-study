import  { DialogModel } from './model'
import { renderTitle,renderContent, renderBottomGroupBtn } from './builder'


// alert
@CustomDialog
export  struct  AlertDialog {
  props:DialogModel;
  controller: CustomDialogController = new CustomDialogController({
    builder: AlertDialog(),
  })


  build() {
    Column() {
      if(this.props.title){
        renderTitle(this.props.title)
      }
      if(this.props.message){
        renderContent(this.props.message)
      }
      renderBottomGroupBtn([{
        color:this.props.confirmColor,
        btnText:this.props.confirmText || '知道了',
        onClick:()=>{
          this.controller.close()
          this.props.onConfirm()
        }
      }])
    }
  }
}



// confirm
@CustomDialog
export  struct  ConfirmDialog {
  props:DialogModel;
  controller: CustomDialogController = new CustomDialogController({
    builder: ConfirmDialog(),
  })


  build() {
    Column() {
      if(this.props.title){
        renderTitle(this.props.title)
      }
      if(this.props.message){
        renderContent(this.props.message)
      }
      renderBottomGroupBtn([{
        color:this.props.cancelColor,
        btnText:this.props.cancelText || '取消',
        onClick:()=>{
          this.controller.close()
          this.props.onCancel()
        }
      },{
        color:this.props.confirmColor,
        btnText:this.props.confirmText || '知道了',
        onClick:()=>{
          this.controller.close()
          this.props.onConfirm()
        }
      }])
    }
  }
}

export default  {
  AlertDialog,
  ConfirmDialog,
}