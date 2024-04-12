

export interface ItabBarItem {
  icon:Resource;
  selectIcon:Resource;
  label:string;
  pageName?:string;
}



export const TabConfig: Array<ItabBarItem> = [
  {
    label:'首页',
    icon:$r('app.media.icon_tab_home_normal'),
    selectIcon:$r('app.media.icon_tab_home_selected'),
    pageName:'home'
  },
  {
    label:'购物',
    icon:$r('app.media.icon_tab_shoppingcart_normal'),
    selectIcon:$r('app.media.icon_tab_shoppingcart_selected'),
    pageName:'shopping'
  },
  {
    label:'消息',
    icon:$r('app.media.icon_tab_message_normal'),
    selectIcon:$r('app.media.icon_tab_message_selected'),
    pageName:'news'
  },
  {
    label:'我的',
    icon:$r('app.media.icon_tab_my_normal'),
    selectIcon:$r('app.media.icon_tab_my_selected'),
    pageName:'account'
  }

]