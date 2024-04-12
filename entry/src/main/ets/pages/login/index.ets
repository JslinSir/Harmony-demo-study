import router from '@ohos.router';
import promptAction from '@ohos.promptAction'

@Entry
@Component
struct LoginPage {
  @State name: string = ''
  @State pwd: string = ''



  handleSubmit = ()=>{
    if(!this.name){
      promptAction.showToast({
        message: '请输入用户名',
      })
       return
    }
    if(!this.pwd){
      promptAction.showToast({
        message: '请输入密码',
      })
      return
    }
    router.replaceUrl({
      url:"pages/main/index"
    })

  }

  // 顶部背景
  @Builder
  renderHeader() {
    //顶部背景
    Column() {
      Text('您好，')
        .fontColor("#333")
        .fontSize(32)
        .fontWeight(FontWeight.Bold)
        .margin({ left: 15 })
        .fontColor($r('app.color.white'))
      Text('欢迎登录')
        .fontColor("#333")
        .fontSize(32)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 40, left: 15 })
        .fontColor($r('app.color.white'))


    }
    .width('100%')
    .height(300)
    .linearGradient({
      angle: 180,
      direction: GradientDirection.Top,
      colors: [['#FF2332', '0'], ['#FF9658', '1']]
    })
    .justifyContent(FlexAlign.End)
    .alignItems(HorizontalAlign.Start)
  }

  // 表单卡片
  @Builder
  renderFormCard() {
    Column() {
      Row().height(40)
      TextInput({ placeholder: '请输入用户名' })
        .onChange((value: string)=>{
          this.name = value
        })
        .caretColor('#FF2332')
        .width('100%')
        .height(48)
        .backgroundColor($r('app.color.white'))
      TextInput({ placeholder: '请输入密码' })
        .onChange((value: string)=>{
           this.pwd = value
        })
        .maxLength(8)
        .type(InputType.Password)
        .caretColor('#FF2332')
        .width('100%')
        .height(48)
        .backgroundColor($r('app.color.white'))
        .margin({top:20})
      Button('登录')
        .onClick(this.handleSubmit)
        .width(330)
        .height(48)
        .borderRadius(20)
        .margin({ top: 60 })
        .backgroundColor('#FF2332')
    }
    .backgroundColor($r('app.color.white'))
    .borderRadius({ topLeft: 20, topRight: 20 })
    .margin({ top: 280 })
    .padding({left:15,right:15})
  }

  build() {
    Column() {
      Stack({ alignContent: Alignment.TopStart }) {
        this.renderHeader()
      }
      .position({x:0,y:0})
      .backgroundColor($r('app.color.white'))
      .width('100%')
      .height('100%')
      this.renderFormCard()
    }
    .alignItems(HorizontalAlign.Start)
    .justifyContent(FlexAlign.Start)
    .width('100%')
    .height('100%')
    .backgroundColor($r('app.color.white'))

  }
}