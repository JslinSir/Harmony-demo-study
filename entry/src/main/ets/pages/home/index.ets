
import router from '@ohos.router';
import TabsBarView from './components/tabsBar'

@Entry
@Component
struct HomePage {
  @State message: string = 'Hello World'

  // 路由跳转
  handleClick(type:string) {
    console.info('Button onClick')
    // router.pushUrl({
    //   url:'pages/layout/index'
    // })
  }

  build() {
    Column(){
      TabsBarView()
    }
  }
}