# 数据模型和 API

### 数据模型

无需重复，引用实际模型文件：

- **用户模型**：请参阅 `src/model/modules/user/`
- **商品模型**：请参阅 `src/model/modules/good/`
- **订单模型**：请参阅 `src/model/modules/order/`
- **相关类型**：`src/types/` 中的 TypeScript 定义

### API 规范

- **API 模块化**：`src/apis/` 目录按业务功能划分
- **HTTP 封装**：`src/utils/http/request.ts` 统一处理请求响应
- **类型定义**：`src/apis/*/typings.ts` 各模块的类型定义
