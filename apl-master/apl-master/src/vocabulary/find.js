addVocabulary({
  '⍷':function(om,al){
    al||nonceError()
    // "AN"⍷"BANANA"                        ←→ 0 1 0 1 0 0
    // "BIRDS" "NEST"⍷"BIRDS" "NEST" "SOUP" ←→ 1 0 0
    // "ME"⍷"HOME AGAIN"                    ←→ 0 0 1 0 0 0 0 0 0 0
    //
    // "DAY"⍷7 9⍴("SUNDAY   ",
    // ...        "MONDAY   ",
    // ...        "TUESDAY  ",
    // ...        "WEDNESDAY",
    // ...        "THURSDAY ",
    // ...        "FRIDAY   ",
    // ...        "SATURDAY ")
    // ... ←→ (7 9⍴0 0 0 1 0 0 0 0 0
    // ...         0 0 0 1 0 0 0 0 0
    // ...         0 0 0 0 1 0 0 0 0
    // ...         0 0 0 0 0 0 1 0 0
    // ...         0 0 0 0 0 1 0 0 0
    // ...         0 0 0 1 0 0 0 0 0
    // ...         0 0 0 0 0 1 0 0 0)
    //
    // (2 2⍴"ABCD")⍷"ABCD" ←→ 4 ⍴ 0
    // (1 2)(3 4)⍷"START"(1 2 3)(1 2)(3 4) ←→ 0 0 1 0
    //
    // (2 2⍴7 8 12 13)⍷1+4 5⍴⍳20
    // ... ←→ 4 5⍴(0 0 0 0 0
    // ...         0 1 0 0 0
    // ...         0 0 0 0 0
    // ...         0 0 0 0 0)
    //
    // 1⍷⍳5                ←→ 0 1 0 0 0
    // 1 2⍷⍳5              ←→ 0 1 0 0 0
    // ⍬⍷⍳5                ←→ 1 1 1 1 1
    // ⍬⍷⍬                 ←→ ⍬
    // 1⍷⍬                 ←→ ⍬
    // 1 2 3⍷⍬             ←→ ⍬
    // (2 3 0⍴0)⍷(3 4 5⍴0) ←→ 3 4 5⍴1
    // (2 3 4⍴0)⍷(3 4 0⍴0) ←→ 3 4 0⍴0
    // (2 3 0⍴0)⍷(3 4 0⍴0) ←→ 3 4 0⍴0
    if(al.shape.length>om.shape.length)return new A([0],om.shape,repeat([0],om.shape.length))
    if(al.shape.length < om.shape.length){
      al=new A( // prepend ones to the shape of ⍺
        al.data,
        repeat([1],om.shape.length-al.shape.length).concat(al.shape),
        repeat([0],om.shape.length-al.shape.length).concat(al.stride),
        al.offset
      )
    }
    if(al.empty())return new A([1],om.shape,repeat([0],om.shape.length))
    var findShape=[]
    for(var i=0;i<om.shape.length;i++){
      var d=om.shape[i]-al.shape[i]+1
      if(d<=0)return new A([0],om.shape,repeat([0],om.shape.length))
      findShape.push(d)
    }
    var stride=strideForShape(om.shape),data=repeat([0],prod(om.shape))
    var p=om.offset,q=0,indices=repeat([0],findShape.length)
    while(1){
      data[q]=+match(al,new A(om.data,al.shape,om.stride,p))
      var a=findShape.length-1
      while(a>=0&&indices[a]+1===findShape[a]){p-=indices[a]*om.stride[a];q-=indices[a]*stride[a];indices[a--]=0}
      if(a<0)break
      p+=om.stride[a];q+=stride[a];indices[a]++
    }
    return new A(data,om.shape)
  }
})
