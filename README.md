# Shopping Online

## 🌈 简介

Shoping On Line 是一个前端免费开源的企业级 H5 商城，也可用于学习参考。

## 🔥 预览

## 🛠️ 产品

- 版本：v0.3 (https://github.com/qiaoliang/shop-online-vue3/releases/tag/v0.3)
- 前端：vueJs + Vant
- 后端：[shopping OnLine in Golang](https://github.com/qiaoliang/shop-online-go/releases/tag/v0.3)
- 运行平台：移动端 H5
- 设计稿画布尺寸：375x667
- 功能清单

  ```
  ├─登录注册
  ├─Tabbar
  ├─个人资料
  ├─动态主题
  ├─优惠券
  ├─售后
  ├─商品
  ├─商品分类
  ├─异常
  ├─收货地址
  ├─积分
  ├─订单
  ├─购物车
  └─钱包
  ```

## 🔨 使用

> Node.js 版本最好 `16.x` 以上

获取项目代码

```bash
# 通过 github 拉取
git clone https://github.com/qiaoliang/shop-online-vue3

# 进入项目目录
cd shop-online-vue3
```

安装依赖

```bash
# 通过 pnpm 安装
pnpm install
```

本地运行

```bash
pnpm run dev
```

打包发布

```bash
pnpm run build
```

### 部署与运行

项目打包后会生成 `dist` 目录，其中包含用于生产环境的静态文件。你可以使用任何静态文件服务器来部署这些文件。本项目提供了一个简单的 Node.js Express 服务器 (`server.js`) 来演示如何运行打包后的程序。

1.  **创建 `server.js` 文件** (如果尚未创建):

    在项目根目录下创建 `server.js` 文件，内容如下：

    ```javascript
    const express = require('express');
    const path = require('path');
    const app = express();
    const port = process.env.PORT || 3000;

    // 提供静态文件
    app.use(express.static(path.join(__dirname, 'dist')));

    // 对于所有路由，都返回 index.html，以便 Vue Router 接管路由
    app.get('*', (req, res) => {
      res.sendFile(path.join(__dirname, 'dist', 'index.html'));
    });

    app.listen(port, () => {
      console.log(`Server running at http://localhost:${port}`);
    });
    ```

2.  **运行打包后的程序**:

    ```bash
    node server.js &
    ```

    程序将在 `http://localhost:3000` 运行。请确保 `3000` 端口未被占用。如果遇到 `EADDRINUSE` 错误，请终止占用该端口的进程。

    **重要提示**：如果前端应用和后端 API 部署在不同的域名或端口，可能会遇到跨域资源共享 (CORS) 问题。你需要确保后端 API 正确配置了 CORS，允许来自前端域名的请求。

## ⭐ 作者

如果觉得项目不错，或者有帮助到你，希望你可以去 Github 帮我点个 ⭐ Star，这将是对我极大的鼓励与支持。