import Navibar from '../../common/components/navibar'


@Entry
@Component
struct BaseComponent{
  build(){
    Column(){
      Navibar({title:'通用组件'}){
         Button('弹窗').onClick(()=>{
           AlertDialog.show(
             {
               title: 'title',
               message: 'text',
               autoCancel: true,
               alignment: DialogAlignment.Center,
               offset: { dx: 0, dy: -20 },
               gridCount: 4,
               confirm: {
                 value: 'button',
                 action: () => {
                   console.info('Button-clicking callback')
                 }
               },
               cancel: () => {
                 console.info('Closed callbacks')
               }
             }
           )
         })
      }
    }

  }
}