// 页面可复用，可抽离的布局，提取到 builder 中去写


/**
 *
 * @param text
 */

interface  IbuilderText {
  text:string;
  onClick:Function
}

@Builder
function builderText({text,onClick}:IbuilderText){
  Text(text)
    .onClick((v)=>onClick(v))
}





export { builderText }