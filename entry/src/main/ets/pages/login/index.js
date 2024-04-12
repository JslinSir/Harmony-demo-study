import router from '@ohos.router';
import promptAction from '@ohos.promptAction';
struct LoginPage extends   {
    constructor() { }
    // 顶部背景
    renderHeader() {
        //顶部背景
            .width('100%')
            .height(300)
            .linearGradient({
            angle: 180,
            direction: GradientDirection.Top,
            colors: [['#FF2332', '0'], ['#FF9658', '1']]
        })
            .justifyContent(FlexAlign.End)
            .alignItems(HorizontalAlign.Start);
    }
    // 表单卡片
    renderFormCard() {
            .backgroundColor($r('app.color.white'))
            .borderRadius({ topLeft: 20, topRight: 20 })
            .margin({ top: 280 })
            .padding({ left: 15, right: 15 });
    }
    build() {
            .alignItems(HorizontalAlign.Start)
            .justifyContent(FlexAlign.Start)
            .width('100%')
            .height('100%')
            .backgroundColor($r('app.color.white'));
    }
}
//# sourceMappingURL=index.js.map