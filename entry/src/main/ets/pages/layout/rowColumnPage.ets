
import router from '@ohos.router';
import Navibar from '../../common/components/navibar'

@Entry
@Component
struct RowPage {
  @State params:Record<string,any> = router.getParams() as Record<string,any>; // 获取传递过来的参数对象

  build() {
    Column() {
      Navibar({title:this.params.name}){
        Column({ space: 20 }) {
          Text('Column space: 20').fontSize(15).fontColor(Color.Gray).width('90%')
          Row().width('90%').height(50).backgroundColor(0xF5DEB3)
          Row().width('90%').height(50).backgroundColor(0xD2B48C)
          Row().width('90%').height(50).backgroundColor(0xF5DEB3)
          Row({ space: 35 }) {
            Text('Row space: 35').fontSize(15).fontColor(Color.Gray)
            Row().width('10%').height(150).backgroundColor(0xF5DEB3)
            Row().width('10%').height(150).backgroundColor(0xD2B48C)
            Row().width('10%').height(150).backgroundColor(0xF5DEB3)
          }.width('90%')
        }.width('100%')




      }
    }
  }
}