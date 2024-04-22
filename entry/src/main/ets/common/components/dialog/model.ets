
export class DialogModel {
  title?:string;
  message?:string;
  confirmText?:string = '确认';
  cancelText?:string = '取消'
  confirmColor?:string = '#ff3322';
  cancelColor?:string = '#333';
  onConfirm?:()=>void;
  onCancel?:()=>void;
  // @BuilderParam customTitle?: ()=> void;
  // @BuilderParam customContent?: ()=> void;


  constructor() {}


  onConfirmClick?(){
    this.onConfirm()
  }

  onCancelClick?(){
    this.onCancel()
  }
}

export  interface IbtnModal {
  btnText:string;
  color:string | Resource
  onClick?:()=> void
}