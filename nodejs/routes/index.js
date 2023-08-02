const express = require('express');
const router = express.Router();
const contactRoute = require('./contacts');
const shopRoute = require('./shop');
const categoriesRoute = require('./categories');
const aboutRoute = require('./about');
module.exports = () => { 
        
    router.get('/', (request, response) => { 
        response.render('layout', { pageTitle: 'Welcome', template: 'index'});
    });
     
    router.get(['/contacts','/contact'], (request, response) => { 
        response.render('layout', { pageTitle: 'Contact Us', template: 'contacts'});
    });

    router.get('/categories', (request, response) => { 
        response.render('layout', { pageTitle: 'Categories of Products', template: 'categories'});
    });
    router.get('/about', (request, response) => { 
        response.render('layout', { pageTitle: 'About Us', template: 'about'});
    });
    router.get('/shop', (request, response) => { 
        response.render('layout', { pageTitle: 'Our Shop', template: 'shop'});
    });
    
    router.use('/shop', shopRoute());
    router.use('/about', aboutRoute());
    router.use('/categories', categoriesRoute());
    router.use('/contact', contactRoute());
    router.use('/contacts', contactRoute());

    return router;
};

