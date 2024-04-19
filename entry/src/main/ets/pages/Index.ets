
import router from '@ohos.router';
import MainPage from './main/index';
import distributedKVStore from '@ohos.data.distributedKVStore';
import  { Student,Person } from '../common/utils/index'
@Entry
@Component
struct LayoutIndex {
    @State loginStatus: boolean = false
    xiaoming:Student = new Student({name:'小明',age:18})

  aboutToAppear(){
    this.xiaoming.say()
    this.xiaoming.sunde()
    // if(this.getLoginStatus()){
    //   router.pushUrl({url:"pages/main/index"})
    //   return
    // }
    // router.pushUrl({url:"pages/login/index"})
    setTimeout(()=>{
       this.loginStatus = true
    },1000)

  }

  getLoginStatus():boolean{
     return false
  }

  build() {
    Column() {
     if(this.loginStatus){
       MainPage()
     }else{
       LoadingProgress().width(100).height(100)
       Text('加载中...')
         .margin({top:20})
         .fontColor("#999")
         .fontSize(20)
     }
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
  }
}