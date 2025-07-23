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
