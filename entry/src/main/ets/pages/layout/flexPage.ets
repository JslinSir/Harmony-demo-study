

import router from '@ohos.router';
import Navibar from '../../common/components/navibar'


@Entry

@Component
struct FlexPage {
  @State message: string = 'Hello World'
  @State params:Record<string,any> = router.getParams() as Record<string,any>; // 获取传递过来的参数对象

  build() {
    Column() {
      Navibar({title:this.params.name}){
        Flex({ direction: FlexDirection.Row }) {
          Text('Row 1').width('33%').height(50).backgroundColor(0xF5DEB3)
          Text('Row 2').width('33%').height(50).backgroundColor(0xD2B48C)
          Text('Row 3').width('33%').height(50).backgroundColor(0xF5DEB3)
        }
        .height(70)
        .width('90%')
        .padding(10)
        .backgroundColor(0xAFEEEE)
        Flex({ direction: FlexDirection.Column }) {
          Text('Column 1').width('100%').height(50).backgroundColor(0xF5DEB3)
          Text(' Column 2').width('100%').height(50).backgroundColor(0xD2B48C)
          Text('Column 3').width('100%').height(50).backgroundColor(0xF5DEB3)
        }
        .height(70)
        .width('90%')
        .padding(10)
        .backgroundColor(0xAFEEEE)

        Flex({ wrap: FlexWrap.Wrap }) {
          Text('超过换行').width('50%').height(50).backgroundColor(0xF5DEB3)
          Text('Wrap 1').width('50%').height(50).backgroundColor(0xF5DEB3)
          Text('Wrap 2').width('50%').height(50).backgroundColor(0xD2B48C)
          Text('Wrap 3').width('50%').height(50).backgroundColor(0xD2B48C)
          Text('Wrap 4').width('50%').height(50).backgroundColor(0xD2B48C)
        }
        .width('90%')
        .padding(10)
        .backgroundColor(0xAFEEEE)
      }
    }
  }
}