import express, { json } from "express";
import cors from 'cors';
import { UserRoute } from './5-routes/UserRoute';
import * as dotenv from 'dotenv'
import { TasksRoute } from "./5-routes/TasksRoute";
import { openAiServer } from "./5-routes/openAiRoute";
dotenv.config()

const server = express();

server.use(json());

server.use(cors({
    allowedHeaders: ['*'],
}));

server.use(UserRoute);
server.use(TasksRoute);
server.use(openAiServer);


server.listen(process.env.PORT, () => console.log(`listening on port ${process.env.PORT}...`))
