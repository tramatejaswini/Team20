const _tableName = 'Register';

const getStudent = connection => (person = {}) => {
    const { id, email, password } = person;
    let query = `select * from ${_tableName}`;
    const clause = [];
    if (id) {
        clause.push(`id='${id}'`);
    }
    if (email) {
        clause.push(`email='${email}'`);
    }
    if (password) {
        clause.push(`password='${password}'`);
    }
    query += clause.length > 0 ? ` where ${clause.join(' and ')}` : ''
    return new Promise((resolve, reject) => {
        connection.query(query, (error, results, fields) => {
            // release connection first!
            connection.release();

            if (error) {
                reject(error);
            } else {
                resolve({ results, fields });
            }
        });
    });
};



const saveStudent = connection => person => {
    const {id, firstName, lastName, email,password , role} = person;
    let query = `insert into ${_tableName} (firstName, lastName, email,password , role)` +
        `VALUES ('${id}','${firstName}', '${lastName}', '${email}', '${password}', '${role}');`;
    return new Promise((resolve, reject) => {
        connection.query(query, (error, results, fields) => {
            // release connection first!
            connection.release();

            if (error) {
                reject(error);
            } else {
                resolve({ results, fields });
            }
        });
    });
};

const editPerson = connection => person => {
    const { firstName, lastName, email,password , role } = person;
    let query = `UPDATE ${_tableName}`;
    const clause = [];

    if (id) {
            clause.push(`id='${id}'`);
        }
    if (firstName) {
        clause.push(`firstName='${firstName}'`);
    }
    if (lastName) {
        clause.push(`lastName='${lastName}'`);
    }
    if (email) {
        clause.push(`email='${email}'`);
    }
    if (password) {
        clause.push(`password='${password}'`);
    }
    if (role) {
        clause.push(`role='${role}'`);
    }
    query += ` SET ${clause.join(' , ')}`;
    query += `where id='${id}'`;
    console.log(query);
    return new Promise((resolve, reject) => {
        connection.query(query, (error, results, fields) => {
            // release connection first!
            connection.release();

            if (error) {
                reject(error);
            } else {
                resolve({ results, fields });
            }
        });
    });
};

module.exports = {
    getPersons,
    getStudent,
    editPerson
};