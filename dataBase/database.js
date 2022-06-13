import pkg from 'pg'
const {Pool} = pkg;

export const newPool = new Pool({
    user: "postgres",
    password: "MamaPapaDimas3452",
    host: "localhost",
    prot: 5432,
    database: "myDb"
}); 