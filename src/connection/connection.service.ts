import { Injectable, Logger } from "@nestjs/common";
import { Client, QueryResult } from 'pg';

@Injectable()
export class ConnectionService {

    async testConnection(client: Client): Promise<string> {
        try {
            await client.connect();
            await client.end();
            return "Test connection success to database PostgreSQL."
        } catch (error) {
            return "Failed to connect to PostgreSQL."
            
        }
    }

    async connectDB(client: Client): Promise<any> {      
        try {
            await client.connect();
            return "Connected to database PostgreSQL.";
        } catch (error) {
            return "Failed to connect to PostgreSQL."
        }
    }

    async disconnectDB(client: Client): Promise<string> {
        if (!client) {
            return "Failed to connect to PostgreSQL."
        }

        try {
            await client.end();
            return "Connection to PostgreSQL was lost!"
        } catch (error) {
            return "No current connection."
        }
    }

    async execute(client:Client, query: string, values?: any[], limit?: number, page?: number): Promise<any> {
        let offset = 0;
        try {
            let stmt = '';
            if (limit !== undefined && page !== undefined) {
                offset = (page - 1)  * limit;
                
                stmt = query + 
                " LIMIT " + limit +
                " OFFSET " + offset;
            } else {
                stmt = query + " LIMIT 10 "
            }
            
            const result = await client.query(stmt, values);

            let table = query.split(" ")[query.split(" ").findIndex(e => e === "from") + 1]
            let stmtCount = 'Select count(id) from ' + table;

            const pageCount = await client.query(stmtCount, values);

            // result output
            const response = [{
                data: result.rows,
                offset: offset,
                pageCount: pageCount.rows[0].count,
                limit: limit
            }]
            return response;
        } catch (error) {
            Logger.log(error)
        }
    }
}