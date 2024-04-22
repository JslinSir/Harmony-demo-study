
import { IbtnModal } from './model'

// 渲染标题
@Builder
export function renderTitle(title:string){
  Text(title)
    .fontColor('#333333')
    .fontSize(16)
    .fontWeight(FontWeight.Bold)
    .padding(15)
}

// 渲染内容
@Builder
export function renderContent(message:string){
  Text(message)
    .fontColor('#333333')
    .fontSize(14)
    .padding(15)
}

// 渲染底部按钮
@Builder
export function renderBottomGroupBtn(arr:Array<IbtnModal>){
  Row(){
    ForEach(arr,(item:IbtnModal)=>{
      Button(item.btnText)
        .fontColor(item.color)
        .onClick(item.onClick)
    })
  }
  .margin({top:15,bottom:15})

}