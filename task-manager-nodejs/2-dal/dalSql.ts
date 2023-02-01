import mySql, { RowDataPacket } from 'mysql2';
import * as dotenv from 'dotenv'
dotenv.config()

const pool = mySql.createPool({
    host: 'host.docker.internal',
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    port: 3306,
    database: process.env.DB_DATABASE
});

export function execute<T>(query: string,param?:any[]) {
    return pool.promise().execute<T & RowDataPacket[]>(query,param);
};



