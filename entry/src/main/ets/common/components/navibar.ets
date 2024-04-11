
/**
 * 自定义一个默认导航组件
 */
@Component
export  default  struct Navibar {
  // 传参，必须从外部传参，不可默认
  @Prop title: string;
  // 自定义 渲染 build
  @BuilderParam customBuilderParam: () => void;
  // 初始化的颜色，可以默认自定义
  private color:ResourceColor = $r('app.color.page_bg')

  build(){
    Navigation() {
      this.customBuilderParam()
    }
    .title(this.title)
    .titleMode(NavigationTitleMode.Mini)
    .backgroundColor(this.color)


  }



}


