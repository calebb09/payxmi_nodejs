var express   = require('express');
var walletController = require('../controllers/wallet');
var accessControl  = require('../controllers/auth').accessControl;
var accessPermission = require('../controllers/customer').accessPermission;
var router  = express.Router();
router.get('/:id', walletController.fetchOne);
router.get('/', walletController.fetchAll);
router.post('/', accessPermission(['customer', 'merchant']), walletController.create);
router.param('id', walletController.validatewallet);
router.put('/:id', accessControl(['admin', 'super_admin','helper']), walletController.update);
router.delete('/:id', accessControl(['admin', 'super_admin']), walletController.deleteWallet);

// Expose User Router
module.exports = router;
