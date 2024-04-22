
/**
 * 模态转场，可实现pop这种
 * https://developer.huawei.com/consumer/cn/doc/harmonyos-guides/arkts-modal-transition-0000001774120166
 *
 */

class BtnModal {
  title?:string;
  message?:string;
  btnText?:string = '知道了';
  btnColor?:string = '#333';

  constructor() {
    
  }
}

interface IbtnModal {
  btnText:string;
  color:string | Resource
  onClick?:()=> void
}


// 渲染标题
@Builder function renderTitle(title:string){
  Text(title)
}

// 渲染内容
@Builder function renderContent(message:string){
    Text(message)
}

// 渲染底部按钮
@Builder function renderBottomGroupBtn(arr:Array<IbtnModal>){
  ForEach(arr,(item:IbtnModal)=>{
    Button(item.btnText)
      .fontColor(item.color)
  })
}





// alert
@CustomDialog
export  struct  AlertDialog {
  title?:string;
  message?:string;
  btnText?:string = '知道了';
  btnColor?:string = '#333';
  @BuilderParam customContent?: ()=> void;
  onConfirm?:()=> void
  controller: CustomDialogController = new CustomDialogController({
    builder: AlertDialog({}),
  })


  build() {
    Column() {
      if(this.title){
        renderTitle(this.title)
      }
      if(this.message){
        if(this.customContent){
          this.customContent()
        }else{
          renderContent(this.message)
        }
      }
      renderBottomGroupBtn([{
        color:this.btnText,
        btnText:this.btnText,
      }])
    }
  }
}


// confirm
@CustomDialog
export  struct ConfirmDialog {
  cancel?: () => void
  confirm?: () => void
  controller: CustomDialogController = new CustomDialogController({
    builder: ConfirmDialog({}),
  })
  build() {
    Column() {
      Text('我是内容')
        .fontSize(20)
        .margin({ top: 10, bottom: 10 })
    }
  }
}

export default  {
  AlertDialog,
  ConfirmDialog
}

