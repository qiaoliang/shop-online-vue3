## 外部依赖与下游服务 - docs/project_external_dependency.md

### 1. 下游服务概述

本项目主要依赖于后端提供的 RESTful API 服务，用于获取和提交业务数据。这些服务涵盖了用户管理、商品管理、购物车、订单、支付、积分、优惠券等核心电商功能。前端通过 HTTP 请求与后端进行数据交互，实现业务逻辑。

### 2. 外部依赖库

本项目通过 `package.json` 管理外部依赖库，主要分为生产依赖 (`dependencies`) 和开发依赖 (`devDependencies`)。

#### 生产依赖 (Dependencies)

| 依赖库名称        | 用途说明                                     |
| ----------------- | -------------------------------------------- |
| `vue`             | 核心前端框架，用于构建用户界面               |
| `vue-router`      | Vue 官方路由管理器，用于实现单页应用路由     |
| `pinia`           | Vue 3 推荐的状态管理库，用于管理应用状态     |
| `vant`            | 移动端 Vue UI 组件库，提供丰富的 UI 组件     |
| `axios`           | 基于 Promise 的 HTTP 客户端，用于发送网络请求 |
| `@vueuse/core`    | Vue Composition API 的实用工具集             |
| `dayjs`           | 轻量级日期处理库                             |
| `good-storage`    | 简单易用的本地存储解决方案                   |
| `number-precision`| 解决 JavaScript 浮点数精度问题               |
| `qs`              | 查询字符串解析和序列化库                     |
| `@vant/area-data` | Vant UI 的省市区数据                         |
| `compressorjs`    | 图片压缩库                                   |
| `express`         | Node.js Web 应用框架 (可能用于本地 mock 或开发服务器) |

#### 开发依赖 (DevDependencies)

| 依赖库名称                  | 用途说明                                     |
| --------------------------- | -------------------------------------------- |
| `vite`                      | 极速前端开发构建工具                         |
| `@vitejs/plugin-vue`        | Vite 的 Vue 插件                             |
| `@vitejs/plugin-vue-jsx`    | Vite 的 Vue JSX 插件                         |
| `typescript`                | JavaScript 的超集，提供类型检查              |
| `eslint`                    | 代码风格检查工具                             |
| `prettier`                  | 代码格式化工具                               |
| `@typescript-eslint/eslint-plugin` | ESLint 的 TypeScript 插件                  |
| `@typescript-eslint/parser` | ESLint 的 TypeScript 解析器                  |
| `less`                      | CSS 预处理器                                 |
| `postcss-px-to-viewport`    | PostCSS 插件，用于将 px 转换为 vw            |
| `vue-tsc`                   | Vue 单文件组件的 TypeScript 类型检查         |
| `vite-plugin-html`          | Vite 的 HTML 处理插件                        |

### 3. 调用关系图

```mermaid
graph TD
    User[用户] --> Frontend[前端应用 (Vue 3)]
    Frontend --> |HTTP/HTTPS| BackendAPI[后端 API 服务]
    BackendAPI --> Database[数据库]

    subgraph Frontend Components
        View[视图层 (Views)]
        Component[组件层 (Components)]
        Store[状态管理层 (Pinia)]
        APIClient[API 客户端 (src/apis)]
    end

    View --> Store
    View --> APIClient
    Component --> Store
    Component --> APIClient
    Store --> APIClient
    APIClient --> BackendAPI
```

**说明**:

-   用户通过浏览器与前端应用进行交互。
-   前端应用（Vue 3）是单页应用，负责渲染 UI 和处理用户交互逻辑。
-   前端应用通过 HTTP/HTTPS 协议调用后端 API 服务，获取和提交数据。
-   后端 API 服务负责处理业务逻辑，并与数据库进行数据交互。
-   前端内部，视图层和组件层通过状态管理层获取和更新数据，并通过 API 客户端与后端通信。
