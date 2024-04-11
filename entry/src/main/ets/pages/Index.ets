
import router from '@ohos.router';

import distributedKVStore from '@ohos.data.distributedKVStore';

@Entry
@Component
struct LayoutIndex {
    loginStatus: boolean = false


  aboutToAppear(){

  }

  getLoginSattus():boolean{

  }

  build() {
    Column() {
      LoadingProgress().width(100).height(100)
      Text('加载中...')
        .margin({top:20})
        .fontColor("#999")
        .fontSize(20)
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}