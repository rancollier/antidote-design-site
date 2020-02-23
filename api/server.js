const express = require('express')
const app = express()
const router = express.Router();
const port = process.env.PORT || 3033
const path = __dirname + '/views/';
router.get('/',function(req,res){
    res.sendFile(path + 'index.html');
  });
  router.get('/api', (req, res) => res.send('Api yes12'))
  router.get('/api/a', (req, res) => res.send('Api one'))

app.use(express.static(path));
app.use('/', router);

app.listen(port, () => console.log(`Example app listening on port ${port}!`))