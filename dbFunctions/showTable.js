import {newPool} from '../dataBase/database.js'
import {table} from 'table'

export async function showTable(input){
    let data = [];
    let _table = [];
    data = (await newPool.query(`select * from ${input}`)).rows;
    _table.push(Object.keys(data[0]));
    data.forEach(item => {
        _table.push(Object.values(item));
    });
    console.log(table(_table));
}

showTable('worker');

