const mysql = require('mysql');
const { sql_host, sql_port, sql_user, sql_password, sql_database, sql_connectionLimit } = require('../config');

const { createTables } = require('./init');
const { getStudent } = require('./students');
const { getMatching, saveInterviewDetails , updateInterviewerStatus} = require('./matching');

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

const _getMatching = async whereClause => {
    const conn = await getConnection();
    return getMatching(conn)(whereClause);
};

const _saveInterviewDetails = async whereClause => {
    const conn = await getConnection();
    return saveInterviewDetails(conn)(whereClause);
};

const _updateInterviewerStatus = async whereClause => {
    const conn = await getConnection();
    return updateInterviewerStatus(conn)(whereClause);
};



module.exports = {
    createTables: _createTables,
    getStudent: _getStudent,
    getMatching: _getMatching,
    saveInterviewDetails: _saveInterviewDetails,
    updateInterviewerStatus : _updateInterviewerStatus
};