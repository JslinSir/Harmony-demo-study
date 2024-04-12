

import router from '@ohos.router';
import Navibar from '../../common/components/navibar'

@Entry
@Component
struct StackPage {
  @State params:Record<string,any> = router.getParams() as Record<string,any>; // 获取传递过来的参数对象

  build() {
    Column() {
      Navibar({title:this.params.name}){
        Stack({ }) { // 层叠布局，子元素默认堆放在一起，最前面的先渲染，后面的盖住前面的视图,层叠的容器如何设置宽高是暂居空间的
          Column(){}.width('90%').height('100%').backgroundColor('#ff58b87c')
          Text('text').width('60%').height('60%').backgroundColor('#ffc3f6aa')
          Button('button').width('30%').height('30%').backgroundColor('#ff8ff3eb').fontColor('#000')
        }.width('100%').height(150).margin({ top: 50 })

        Text('设置对齐方式').margin({top:30})

        Stack({ alignContent: Alignment.BottomStart }) {
          Column() {
            Text('Stack子元素1').fontSize(20)
          }.width(100).height(100).backgroundColor(0xffd306).zIndex(2)

          Column() {
            Text('Stack子元素2').fontSize(20)
          }.width(150).height(150).backgroundColor(Color.Pink).zIndex(1)

          Column() {
            Text('Stack子元素3').fontSize(20)
          }.width(200).height(200).backgroundColor(Color.Grey)
        }.margin({ top: 100 }).width(350).height(350).backgroundColor(0xe0e0e0)

      }
    }
  }
}