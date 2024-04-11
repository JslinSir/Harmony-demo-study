

export const LayoutConfig =  [
  {
    name:'线性布局（Row、Column）',
    url:'pages/layout/rowColumnPage'
  },
  {
    name:'层叠布局（Stack）',
    url:'pages/layout/stackPage'
  },
  {
    name:'弹性布局（Flex）',
    url:'pages/layout/flexPage'
  },
  {
    name:'相对布局（RelativeContainer）',
    url:'pages/layout/relativePage'
  },
  {
    name:'栅格布局（GridRow、GridCol）',
    url:'pages/layout/gridRowPage'
  },
  {
    name:'媒体查询（@ohos.mediaquery）',
    url:'pages/layout/mediaQueryPage'
  },
  {
    name:'列表（List）',
    url:'pages/layout/listPage'
  },
  {
    name:'网格（Grid）',
    url:'pages/layout/gridPage'
  },
  {
    name:'轮播（Swiper）',
    url:'pages/layout/swiperPage'
  },
]

export interface ILayoutItem {
  name:string
  url:string
}