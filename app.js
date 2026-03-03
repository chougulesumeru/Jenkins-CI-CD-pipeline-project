const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Hello from our DevOps Pipeline! Built with Jenkins, Docker, K8s, Git, and Terraform.');
});

app.listen(port, () => {
    console.log(`App running on http://localhost:${port}`);
});