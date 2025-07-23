## 接口文档 - docs/project_api.md

### 1. Banner 模块

| API 名称      | 功能说明     | 参数数据说明 | 返回值说明 |
| ------------- | ------------ | ------------ | ---------- |
| `bannerList`  | 获取 Banner 列表 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `bannerTypes` | 获取所有 Banner 类型 | `data?: Recordable` | `Promise<ServiceResult<any>>` |

### 2. 购物车模块

| API 名称             | 功能说明     | 参数数据说明                               | 返回值说明 |
| -------------------- | ------------ | ------------------------------------------ | ---------- |
| `shoppingCartAdd`    | 加入购物车   | `data: shoppingCartAddParams`              | `Promise<ServiceResult<shoppingCartResult>>` |
| `shoppingCartEmpty`  | 清空购物车   | `data?: Recordable`                        | `Promise<ServiceResult<any>>` |
| `shoppingCartInfo`   | 读取购物车数据 | `data?: Recordable`                        | `Promise<ServiceResult<shoppingCartResult>>` |
| `shoppingCartModifyNumber` | 购物车修改购买数量 | `data?: Recordable`                        | `Promise<ServiceResult<shoppingCartResult>>` |
| `shoppingCartRemove` | 移除购物车中某条记录 | `data?: Recordable`                        | `Promise<ServiceResult<shoppingCartResult>>` |
| `shoppingCartSelect` | 购物车修改选中状态 | `data?: Recordable`                        | `Promise<ServiceResult<shoppingCartResult>>` |

### 3. 文件上传模块

| API 名称      | 功能说明     | 参数数据说明 | 返回值说明 |
| ------------- | ------------ | ------------ | ---------- |
| `dfsUploadFile` | 上传本地文件至服务器 | `data: any`  | `Promise<ServiceResult<any>>` |

### 4. 优惠券模块

| API 名称             | 功能说明     | 参数数据说明 | 返回值说明 |
| -------------------- | ------------ | ------------ | ---------- |
| `discountsCoupons`   | 获取可领取优惠券列表 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `discountsDetail`    | 优惠券规格详情 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `discountsExchange`  | 使用优惠券-红包的动态口令兑换优惠券 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `discountsFetch`     | 领取优惠券   | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `discountsMerge`     | 优惠券合并   | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `discountsMergeList` | 获取优惠券合并规则 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `discountsMy`        | 我的优惠券   | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `discountsSend`      | 赠送优惠券   | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `discountsStatistics` | 优惠券统计   | `data?: Recordable` | `Promise<ServiceResult<any>>` |

### 5. 商品模块

| API 名称             | 功能说明     | 参数数据说明 | 返回值说明 |
| -------------------- | ------------ | ------------ | ---------- |
| `goodsSeckillGrab`   | 抢占秒杀名额 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsVisitLog`      | 商品浏览足迹（历史记录） | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsVisitLogAdd`   | 添加浏览足迹 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsVisitLogClear` | 清除所有足迹数据 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsVisitLogDelete` | 删除商品足迹 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsBrandDetail`   | 品牌详情     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsBrandFavAdd`   | 添加品牌收藏 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsBrandFavCheck` | 检测是否已收藏 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsBrandFavDelete` | 删除品牌收藏 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsBrandFavList`  | 品牌收藏列表 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsBrandList`     | 品牌列表     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsCategoryAll`   | 商品类别     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsCategoryInfo`  | 分类详情     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsDel`           | 删除自己发布的商品 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsDetail`        | 商品详情     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsFavAdd`        | 添加商品收藏 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsFavCheck`      | 检测是否已收藏 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsFavDelete`     | 删除商品收藏 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsFavList`       | 商品收藏列表 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsGoodsAddition` | 读取商品的可选配件 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsHisDelete`     | 删除商品历史购买记录 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsHisList`       | 获取购买过的商品列表 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsLimitation`    | 读取商品的限购设置列表 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsList`          | 商品列表     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsPrice`         | 获取商品价格 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsPriceDay`      | 读取商品的按天定价数据列表 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsRebate`        | 获取商品的会员折扣 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `goodsReputation`    | 获取商品评价列表 | `data?: Recordable` | `Promise<ServiceResult<any>>` |

### 6. 订单模块

| API 名称             | 功能说明     | 参数数据说明 | 返回值说明 |
| -------------------- | ------------ | ------------ | ---------- |
| `peisonFeeList`      | 读取配送费设置 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderClose`         | 关闭订单     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderCreate`        | 创建订单[下单] | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderDelete`        | 删除订单     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderDelivery`      | 确认收货     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderDetail`        | 订单详情     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderList`          | 订单列表     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderPay`           | 钱包支付订单 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderRefund`        | 获取订单退款记录 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderRefundApplyApply` | 申请售后     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderRefundApplyCancel` | 撤销退换货申请 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderRefundApplyInfo` | 退换货详情   | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderReputation`    | 评价接口     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderSet`           | 获取订单设置信息 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderStartOrderPeriod` | 开始周期性订阅,针对已经停止的订阅重新开启 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `orderStatistics`    | 订单统计     | `data?: Recordable` | `Promise<ServiceResult<any>>` |

### 7. 积分模块

| API 名称             | 功能说明     | 参数数据说明 | 返回值说明 |
| -------------------- | ------------ | ------------ | ---------- |
| `growthExchange`     | 积分兑换成长值 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `scoreDeductionRules` | 获取积分抵扣规则 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `scoreExchange`      | 积分券兑换积分 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `scoreExchangeCash`  | 积分兑换成现金 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `scoreLogs`          | 积分明细记录 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `scoreRank`          | 用户积分排行榜 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `scoreReduce`        | 用户主动扣除积分 | `type, data?: Recordable` | `Promise<ServiceResult<any>>` |
| `scoreSendRule`      | 积分赠送规则 | `data?: Recordable` | `Promise<ServiceResult<any>>` |

### 8. 用户模块

| API 名称             | 功能说明     | 参数数据说明 | 返回值说明 |
| -------------------- | ------------ | ------------ | ---------- |
| `userAmount`         | 查看用户资产 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userCashLog`        | 资金流水     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userDetail`         | 查看用户详情 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userModify`         | 修改用户信息 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userLogOut`         | 退出登录     | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userMBindMobile`    | 绑定手机号码 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userMLogin`         | 用户登录[手机号码] | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userMLoginMobile`   | 使用手机号码和验证码登录 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userMRegister`      | 用户注册[手机号] | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userMResetPwd`      | 重设登陆密码 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userModifyPwd`      | 修改登陆密码 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userShoppingAddressAdd` | 添加收货地址 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userShoppingAddressDefault` | 获取默认收货地址 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userShoppingAddressDelete` | 删除收货地址 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userShoppingAddressDetail` | 收货地址详情 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userShoppingAddressList` | 收货地址列表 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `userShoppingAddressUpdate` | 修改收货地址 | `data?: Recordable` | `Promise<ServiceResult<any>>` |

### 9. 验证码模块

| API 名称             | 功能说明     | 参数数据说明 | 返回值说明 |
| -------------------- | ------------ | ------------ | ---------- |
| `verificationMailCheck` | 校验邮件验证码是否正确 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `verificationMailGet` | 获取邮件验证码 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `verificationPicCheck` | 校验图片验证码是否正确 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `verificationPicGet` | 获取图形验证码 | `data?: Recordable` | `string` (图片URL) |
| `verificationSmsCheck` | 校验短信验证码是否正确 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `verificationSmsGet` | 获取短信验证码 | `data?: Recordable` | `Promise<ServiceResult<any>>` |
| `verificationSmsGetByToken` | 获取短信验证码[发送至当前绑定手机] | `data?: Recordable` | `Promise<ServiceResult<any>>` |
