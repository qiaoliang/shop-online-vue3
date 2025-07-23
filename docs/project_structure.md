## 项目结构 - docs/project_structure.md

### 1. 项目模块划分

本项目采用模块化的方式组织代码，主要模块划分如下：

-   **`src/apis`**: 存放与后端 API 交互的服务层代码，按业务功能划分。
-   **`src/assets`**: 存放静态资源，如图片、图标、视频等。
-   **`src/components`**: 存放可复用的 Vue 组件，按功能或业务划分。
-   **`src/constants`**: 存放项目中的常量定义。
-   **`src/hooks`**: 存放 Vue 3 Composition API 的可复用逻辑（Hooks）。
-   **`src/model`**: 存放前端领域模型定义和数据转换逻辑。
-   **`src/router`**: 存放 Vue Router 的路由配置和路由守卫。
-   **`src/store`**: 存放 Pinia 状态管理模块，按业务功能划分。
-   **`src/styles`**: 存放全局样式、Less 变量和组件库主题定制。
-   **`src/types`**: 存放 TypeScript 类型定义，包括全局类型、接口等。
-   **`src/utils`**: 存放项目中的工具函数和通用方法。
-   **`src/views`**: 存放页级组件，即各个业务页面的入口。

### 2. 代码组织结构

```
shop-online-vue3/
├───public/             # 静态资源
├───src/                # 源代码目录
│   ├───App.vue         # 根组件
│   ├───main.ts         # 应用入口文件
│   ├───apis/           # API 服务模块
│   │   ├───banner/     # Banner 相关 API
│   │   ├───cart/       # 购物车相关 API
│   │   ├───...         # 其他业务模块 API
│   ├───assets/         # 静态资源
│   │   ├───icons/      # 图标
│   │   ├───images/     # 图片
│   │   └───videos/     # 视频
│   ├───components/     # 可复用组件
│   │   ├───HelloWorld.vue
│   │   ├───AddressList/ # 地址列表组件
│   │   ├───...         # 其他通用组件
│   ├───constants/      # 常量定义
│   │   ├───index.ts
│   │   └───modules/
│   ├───hooks/          # Composition API Hooks
│   │   └───shared/
│   ├───model/          # 前端领域模型
│   │   ├───index.ts
│   │   └───modules/
│   ├───router/         # 路由配置
│   │   ├───index.ts
│   │   ├───types.ts
│   │   ├───guard/      # 路由守卫
│   │   └───routes/     # 路由定义
│   ├───store/          # Pinia 状态管理
│   │   ├───index.ts
│   │   └───modules/
│   ├───styles/         # 样式文件
│   │   ├───css-var.less
│   │   ├───iconfont.less
│   │   ├───index.less
│   │   ├───vant-theme-custom.less
│   │   └───variable.less
│   ├───types/          # TypeScript 类型定义
│   │   ├───global.d.ts
│   │   ├───index.d.ts
│   │   ├───module.d.ts
│   │   └───shims-vue.d.ts
│   ├───utils/          # 工具函数
│   │   ├───format.ts
│   │   ├───index.ts
│   │   ├───lodash.ts
│   │   ├───validate.ts
│   │   ├───helpers/
│   │   └───http/       # HTTP 请求封装
│   └───views/          # 页面组件
│       ├───address/    # 地址管理页面
│       ├───cart/       # 购物车页面
│       │   ├───index.vue
│       │   └───...     # 其他页面
├───index.html          # HTML 入口文件
├───package.json        # 项目依赖和脚本配置
├───vite.config.ts      # Vite 配置文件
├───tsconfig.json       # TypeScript 配置文件
├───.eslintrc.js        # ESLint 配置
├───.prettierrc.js      # Prettier 配置
├───postcss.config.js   # PostCSS 配置
└───...
```

### 3. 关键包说明

-   **`main.ts`**: 项目的入口文件，负责 Vue 应用的创建、路由、状态管理和全局样式的引入。
-   **`App.vue`**: Vue 应用的根组件，通常包含路由视图 `<router-view>`。
-   **`vite.config.ts`**: Vite 构建工具的配置文件，用于配置开发服务器、构建优化、插件等。
-   **`src/utils/http/request.ts`**: 封装了 Axios，用于统一处理 HTTP 请求、响应拦截、错误处理等。
-   **`src/router/index.ts`**: Vue Router 的主配置文件，定义了所有路由规则。
-   **`src/store/index.ts`**: Pinia 状态管理的主配置文件，用于注册各个模块的 Store。

### 4. 分层架构说明

本项目采用典型的前端分层架构，职责清晰，便于维护和扩展：

-   **视图层 (Views/Components)**: 由 `src/views` 和 `src/components` 组成，负责用户界面的展示和用户交互。`views` 目录存放页级组件，`components` 目录存放可复用的小组件。
-   **状态管理层 (Store)**: 由 `src/store` 组成，使用 Pinia 进行全局状态管理，集中管理应用的状态，并提供统一的状态访问和修改方式。
-   **服务层 (APIs)**: 由 `src/apis` 组成，负责与后端 API 进行数据交互，封装了 HTTP 请求的细节，提供清晰的接口供上层调用。
-   **路由层 (Router)**: 由 `src/router` 组成，负责管理应用的页面跳转和导航，包括路由配置和路由守卫。
-   **工具层 (Utils)**: 由 `src/utils` 组成，提供各种通用工具函数，如格式化、验证、HTTP 请求封装等，支持其他层的通用功能。
-   **模型层 (Model/Types)**: 由 `src/model` 和 `src/types` 组成，定义了前端的数据结构和数据转换逻辑，确保数据的一致性和可维护性。
-   **样式层 (Styles)**: 由 `src/styles` 组成，负责管理应用的全局样式、主题和组件库的样式定制。
