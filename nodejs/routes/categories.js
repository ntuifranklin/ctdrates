const express = require('express');
const router = express.Router();

module.exports = () => { 
        
    
    router.get('/', (request, response) => { 
        response.render('layout', { pageTitle: 'Categories of Products', template: 'categories'});
    });
     
    /*
    router.get('/:category', (request, response) => { 
        return response.send(`Details page of ${request.params.category}`);
    });
    */


    return router;
};

