simditor-marked
==============

[Simditor](http://simditor.tower.im/)扩展，将编辑器全屏

### 如何使用

#### 常规加载
在Simditor的基础上引用 simditor-fullscreen 的脚本

```html
<script src="js/simditor-fullscreen.js"></script>
```

配置

```javascript
new Simditor({
    textarea: textareaElement,
    ...,
    toolbar: [..., 'fullscreen']
})
```

#### AMD模式加载

引入require.js
```
<script src="bower_components/requirejs/require.js"></script>
```

在require.js的入口 配置 simditor-fullscreen
```
 require.config({
    paths:{
      jquery: 'bower_components/jquery/dist/jquery.min',
      simditor: 'bower_components/simditor/lib/simditor',
      'simple-module': 'bower_components/simple-module/lib/module',
      'simple-uploader': 'bower_components/simple-uploader/lib/uploader',
      'simple-hotkeys': 'bower_components/simple-hotkeys/lib/hotkeys',
      'simditor-fullscreen': 'lib/simditor-fullscreen',
    }
  });
```

使用simditor
```
  require(
    [
      'jquery',
      'simditor',
      'simditor-fullscreen'
    ],function($, Simditor){
      var editor = new Simditor({
        textarea: $('#editor'),
        toolbar: [
          //...
          'fullscreen'
        ]
      });
    });
```


### 使用bower安装

```shell
bower install simditor-fullscreen
```

### 查看 demo

clone 本仓库。

在仓库目录下运行
```shell
npm install
bower install
grunt
```
在浏览器打开index.html即可(requirejs 的demo为index-require.html)

### Test

在ubuntu 14.04的 chrome和firefox 下测试通过.

### History
v0.0.2
1. 支持2.1.5版本．
(由于官方不在提供统一的图标处理，因此需要额外添加对fontawesome的依赖．具体可以参考demo: index.html)

v0.0.1 

1. 仅支持2.0 以上版本
