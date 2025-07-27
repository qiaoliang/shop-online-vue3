# 源树和模块组织

### 项目结构（实际）

```text
shop-online-vue3/
├── src/
│   ├── apis/           # API 服务层，按业务模块划分
│   │   ├── banner/     # 广告 Banner API
│   │   ├── cart/       # 购物车 API
│   │   ├── dfs/        # 文件上传 API
│   │   ├── discounts/  # 优惠券 API
│   │   ├── goods/      # 商品 API
│   │   ├── order/      # 订单 API
│   │   ├── score/      # 积分 API
│   │   ├── user/       # 用户 API
│   │   └── verification/ # 验证码 API
│   ├── assets/         # 静态资源
│   │   ├── icons/      # SVG 图标
│   │   ├── images/     # 图片资源
│   │   └── videos/     # 视频资源
│   ├── components/     # 可复用组件
│   │   ├── AddressList/ # 地址列表组件
│   │   ├── GoodCard/   # 商品卡片组件
│   │   ├── Price/      # 价格显示组件
│   │   ├── Sku/        # 商品规格选择组件
│   │   ├── Tabbar/     # 底部导航组件
│   │   └── ...         # 其他通用组件
│   ├── constants/      # 常量定义
│   │   ├── index.ts    # 全局常量
│   │   └── modules/    # 模块化常量
│   ├── hooks/          # Vue 3 Composition API Hooks
│   │   └── shared/     # 共享 Hooks
│   ├── model/          # 前端领域模型
│   │   ├── index.ts    # 模型入口
│   │   └── modules/    # 模块化模型
│   ├── router/         # 路由配置
│   │   ├── index.ts    # 路由入口
│   │   ├── guard/      # 路由守卫
│   │   ├── routes/     # 路由定义
│   │   └── types.ts    # 路由类型
│   ├── store/          # Pinia 状态管理
│   │   ├── index.ts    # Store 入口
│   │   └── modules/    # 模块化 Store
│   ├── styles/         # 全局样式
│   │   ├── index.less  # 主样式文件
│   │   ├── variable.less # 样式变量
│   │   └── vant-theme-custom.less # Vant 主题定制
│   ├── types/          # TypeScript 类型定义
│   │   ├── global.d.ts # 全局类型
│   │   ├── index.d.ts  # 类型入口
│   │   └── module.d.ts # 模块类型
│   ├── utils/          # 工具函数
│   │   ├── http/       # HTTP 请求封装
│   │   ├── helpers/    # 辅助工具
│   │   ├── format.ts   # 格式化工具
│   │   └── validate.ts # 验证工具
│   ├── views/          # 页面组件
│   │   ├── address/    # 地址管理页面
│   │   ├── cart/       # 购物车页面
│   │   ├── category/   # 商品分类页面
│   │   ├── good/       # 商品详情页面
│   │   ├── home/       # 首页
│   │   ├── integral/   # 积分页面
│   │   ├── login/      # 登录页面
│   │   ├── mine/       # 个人中心页面
│   │   ├── order/      # 订单页面
│   │   ├── wallet/     # 钱包页面
│   │   └── ...         # 其他页面
│   ├── App.vue         # 根组件
│   └── main.ts         # 应用入口
├── public/             # 静态资源
├── docs/               # 项目文档
├── UI-design/          # UI 设计稿
├── package.json        # 项目配置
├── vite.config.ts      # Vite 配置
└── tsconfig.json       # TypeScript 配置
```

### 关键模块及其用途

- **用户管理**：`src/views/login/`、`src/views/mine/` - 处理用户登录、注册、个人信息管理
- **商品展示**：`src/views/good/`、`src/views/category/` - 商品详情、分类展示
- **购物车**：`src/views/cart/` - 购物车管理，支持商品添加、数量修改
- **订单管理**：`src/views/order/` - 订单创建、支付、状态跟踪
- **地址管理**：`src/views/address/` - 收货地址的增删改查
- **钱包功能**：`src/views/wallet/` - 用户钱包、资金记录
- **积分系统**：`src/views/integral/` - 积分兑换、积分规则
