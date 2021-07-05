var express   = require('express');
var BankController = require('../controllers/banks');
var accessControl  = require('../controllers/auth').accessControl;
var accessPermission = require('../controllers/customer').accessPermission;
var router  = express.Router();
router.get('/:id',accessControl(['admin', 'super_admin']), BankController.fetchOne);
router.get('/',accessControl(['admin', 'super_admin','helper','customers']), BankController.fetchAll);
router.get('/customers', accessPermission(['customers']), BankController.fetchUser)
router.post('/', accessPermission(['customer', 'merchant']), BankController.create);
router.param('id', BankController.validatebank);
router.put('/:id', accessControl(['admin', 'super_admin']), BankController.update);
router.delete('/:id', accessControl(['admin', 'super_admin','customers']), BankController.deleteBank);

// Expose User Router
module.exports = router;
