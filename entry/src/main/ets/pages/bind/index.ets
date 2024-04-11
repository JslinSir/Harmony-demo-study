@Entry
@Component
struct BindIndex {
  @State message: string = 'Hello World'


  build() {
    Row() {
      Column() {

        Button('123213')

      }
      .width('100%')
    }
    .height('100%')
  }
}