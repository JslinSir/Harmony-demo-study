import { TabConfig, ItabBarItem } from './config'
import HomeView from '../home/index'
import ShoppingView from '../shopping/index'
import NewsView from '../news/index'
import AccountView from '../account/index'

@Component
export default struct TabsBarView {
  private tabsController: TabsController = new TabsController()
  @State currentIndex: number = 0;

  @Builder TabBuilder(item: ItabBarItem, targetIndex: number) {
    Column() {
      Image(this.currentIndex === targetIndex ? item.selectIcon : item.icon)
        .width(24)
        .height(24)
      Text(item.label)
        .fontColor(this.currentIndex === targetIndex ? $r('app.color.primary') : $r('app.color.grey'))
        .fontSize(12)
        .margin({ top: 2 })
    }
    .onClick(() => {
      this.currentIndex = targetIndex;
      this.tabsController.changeIndex(this.currentIndex);
    })
  }

  // @Builder
  // renderTabContent() {
  //   if (this.currentIndex === 0) {
  //     HomeView()
  //   } else if (this.currentIndex === 1) {
  //     ShoppingView()
  //   } else if (this.currentIndex === 2) {
  //     NewsView()
  //   } else {
  //     AccountView()
  //   }
  // }

  build() {
    Tabs({ barPosition: BarPosition.End }) {
      //  使用循环的方式必须绑定 state 下的 currentIndex 才会更新
      // ForEach(TabConfig, (item: ItabBarItem, index: number | undefined) => {
      //   TabContent() {
      //     this.renderTabContent()
      //   }
      //   .tabBar(this.TabBuilder(item, index))
      // })

      //   硬编码写入
      TabContent() {
        HomeView()
      }
      .tabBar(this.TabBuilder(TabConfig[0], 0))

      TabContent() {
        ShoppingView()
      }
      .tabBar(this.TabBuilder(TabConfig[1], 1))

      TabContent() {
        NewsView()
      }
      .tabBar(this.TabBuilder(TabConfig[2], 2))

      TabContent() {
        AccountView()
      }
      .tabBar(this.TabBuilder(TabConfig[3], 3))

    }
    .barMode(BarMode.Fixed)
    .onChange((index) => {
      this.currentIndex = index
    })

  }
}