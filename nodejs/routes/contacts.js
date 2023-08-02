const express = require('express');
const router = express.Router();

module.exports = () => { 
       
    /*
    router.get('/', (request, response) => { 
        return response.send('Contact Page');
    });
     */
    
    router.get('/', (request, response) => { 
        response.render('layout', { pageTitle: 'Contact Us', template: 'contacts'});
    });


    return router;
};

