
/**
 *  样式提取，只能在当前页面使用，不支持export
 * 仅支持 通用属性 和通用事件，flex 只支持部分
 */
@Styles function cellStyle(){
  .width('100%')
  .height(88)
  .borderRadius(20)
  .padding(20)
  .margin({top:15})
  .backgroundColor($r('app.color.white'))

}


import router from '@ohos.router';
import Navibar from '../../common/components/navibar'
import  { LayoutConfig,ILayoutItem } from './config'

@Entry
@Component
struct Index {
   configs: Array<ILayoutItem> = LayoutConfig

  @Builder renderCard(){
    List(){
      ForEach(this.configs,(item:ILayoutItem)=>{
        ListItem() {
          Row(){
            Text(item.name).fontSize(20)
            Image($r('app.media.arrow')).width(14).height(14)
          }
          .cellStyle()
          .alignItems(VerticalAlign.Center)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .onClick(()=> router.pushUrl({url:item.url,params:item}))
      })
    }

    .margin({top:20,left:15,right:15})
    .padding({bottom:30})
  }

  build() {
    Column(){
      Navibar({title:'页面布局'}){ // 尾随闭包
        this.renderCard()
      }
    }



  }
}