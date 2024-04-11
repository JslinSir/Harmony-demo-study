

import router from '@ohos.router';
import Navibar from '../../common/components/navibar'

@Entry
@Component
struct MediaQueryPage {
  @State params:Record<string,any> = router.getParams() as Record<string,any>; // 获取传递过来的参数对象

  build() {
    Column() {
      Navibar({title:this.params.name}){
        Text('123')
      }
    }
  }
}