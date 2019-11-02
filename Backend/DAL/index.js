const mysql = require('mysql');
const { sql_host, sql_port, sql_user, sql_password, sql_database, sql_connectionLimit } = require('../config');

const { createTables } = require('./init');
// const { getPersons, savePerson, editPerson } = require('./persons');
// const { getItems, saveItem, editItem, delItem } = require('./items');
// const { getRestaurants, saveRestaurant, editRestaurant } = require('./restaurants');
// const { getOrders, saveOrder, editOrder } = require('./orders');
// const { getOrderDetails, saveOrderDetails } = require('./orderdetails');
// const { editSections } = require('./items');
const { getStudent } = require('./students');

const pool = mysql.createPool({
    connectionLimit: sql_connectionLimit,
    host: sql_host,
    port: sql_port,
    user: sql_user,
    password: sql_password,
    database: sql_database,
    multipleStatements: true
});

const getConnection = () => {
    return new Promise((resolve, reject) => {
        pool.getConnection((err, connection) => {
            console.log()
            return err ? reject(err) : resolve(connection);
        });
    });
};

const _createTables = async () => {
    const conn = await getConnection();
    return createTables(conn);
};

const _getStudent = async whereClause => {
    const conn = await getConnection();
    return getStudent(conn)(whereClause);
};


module.exports = {
    createTables: _createTables,
    getStudent: _getStudent
};