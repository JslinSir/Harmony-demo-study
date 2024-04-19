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

  /**
   * Builder
   * @param index
   */
  @Builder
  renderTabContent(index: number) {
    if (index === 0) {
      HomeView()
    } else if (index === 1) {
      ShoppingView()
    } else if (index === 2) {
      NewsView()
    } else {
      AccountView()
    }
  }

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      ForEach(TabConfig, (item: ItabBarItem, index: number | undefined) => {
        TabContent() {
          this.renderTabContent(index)
        }
        .tabBar(this.TabBuilder(item, index))
      })


    }
    .barMode(BarMode.Fixed)
    .onChange((index) => {
      this.currentIndex = index
    })

  }
}