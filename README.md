
## Docsify文档说明

> 项目文档采用Markdown编写，由[Docsify](https://docsify.js.org/#/zh-cn/)实时渲染

- 文档主体

  文档主体在`src`目录下，每个项目单独一个目录。例如:

  消息队列的项目文档放在`src/RGP-MESSAGE`下，图片文件放在`src/RGP-MESSAGE/images`目录下

- 文档目录(侧边栏)

  文档目录在`src/项目目录/_sidebar.md`文件中，每个项目有单独的文档目录

  例如:消息队列的文档目录在`src/RGP-MESSAGE/_sidebar.md`中，内容如下

  ```reStructuredText
  - 产品介绍
    - [背景](RGP-MESSAGE/01.introduction/background.md)
  
  - 产品设计文档
    - [应用信息设计](RGP-MESSAGE/02.design-document/application_information_design.md)
  
  - 用户使用手册
    - [用户指南](RGP-MESSAGE/03.user-guide/user-guide.md)
  
  - 运维手册
    - [监控报警事项](RGP-MESSAGE/04.devops-guide/monitor_alarm.md)
  
  - OKR
    - [OKR 目标](RGP-MESSAGE/05.okr-summary/okr.md)
  ```

## 开发方式

> 改动提交到 `master` 分支后，会触发`CI`，稍等片刻再访问文档地址就可以看到相应的变化

- `Docsify`对`Markdown`语法进行了扩展，如果你想让文档的表现力更好，可以参考 [Docsify Markdown扩展](https://docsify.js.org/#/zh-cn/helpers)

- 标题锚点`ID`的生成规则:例如# ## ### 等标题会生成标题锚点用于跳转，`ID`生成规规则为:

  - 如果标题由数字开头生成的ID前面会添加 `_`下划线
  - 标题中包含空格的会被转成`-`中横杠【例如 `# 1. 背景`生成的`ID`为 `_1.-背景`】
  - 如果不想使用默认的ID生成规则，可以[为标题添加id属性](https://docsify.js.org/#/zh-cn/helpers?id=设置标题的-id-属性)【`### 你好，世界 :id=hello-world`】

- 页面间跳转方式:以上面文档目录为例，在本页面想要跳转到背景的二级标题 `概述` 那么应该写成

  ```text
  ```

  不同文件间的跳转必须加上完整的项目路径，跳转到具体的标题锚点应该使用渲染后的锚点`ID`，如

  ```reStructuredText
  [跳转应用信息设计](RGP-MESSAGE/02.design-document/application_information_design.md)
  ```

## 文档服务效果图

![文档服务效果图1](https://raw.githubusercontent.com/RobertoHuang/RGP-LEARNING/master/Others/images/%E6%96%87%E6%A1%A3%E6%9C%8D%E5%8A%A1%E6%95%88%E6%9E%9C%E5%9B%BE1.png)

![文档服务效果图2](https://raw.githubusercontent.com/RobertoHuang/RGP-LEARNING/master/Others/images/%E6%96%87%E6%A1%A3%E6%9C%8D%E5%8A%A1%E6%95%88%E6%9E%9C%E5%9B%BE2.png)

## 附录

- 参考文档:
  - [.gitlab-ci.yml语法详解 https://docs.gitlab.com/ee/ci/yaml/](https://docs.gitlab.com/ee/ci/yaml/)
  - [docsify文档生成器 https://docsify.js.org/#/?id=docsify-494](https://docsify.js.org/#/?id=docsify-494)
  - [VuePress静态网站生成器 https://vuepress.vuejs.org/zh/guide/](https://vuepress.vuejs.org/zh/guide/)

- `UML`支持

  `Markdown`扩展支持[PlantUML](http://plantuml.com/zh/index)

  例如代码块:

  ```reStructuredText
  ​```plantuml
  Alice -> Bob: 你好！！
  ​```
  ```

  将会生成时序图:

  ![markdown-plantuml01.png](https://raw.githubusercontent.com/RobertoHuang/RGP-LEARNING/master/Others/images/markdown-plantuml01.png)

  而如下代码块

  ```text
  ​```plantuml
  class Car
    
  Driver - Car : drives >
  Car *- Wheel : have 4 >
  Car -- Person : < owns
  ​```
  ```

  将会生成类图:

  ![markdown-plantuml02.png](https://raw.githubusercontent.com/RobertoHuang/RGP-LEARNING/master/Others/images/markdown-plantuml02.png)