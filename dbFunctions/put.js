import {newPool} from '../dataBase/database.js'

export async function put(input, table){
    let values = [];
    let data = [];

    data = (await newPool.query(`select * from ${table}`)).rows;
    const rows = Object.keys(data[0]).slice(1).join(', ');
     for(let i = 1; i < Object.keys(data[0]).length; i++) values.push(`$${i}`);

     try{
    data = (await newPool.query(`insert into ${table} (${rows}) values (${values.join(', ')})`, input));
    }catch (error){
        console.log(error);
    }
}

put(['Name', 'Surname', '12-12-2012', 2, 2000], 'worker');