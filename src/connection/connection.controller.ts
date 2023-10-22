import { Body, Controller, Get, Logger, Post, Query } from "@nestjs/common";
import { Client } from 'pg';
import { ConnectionDto } from "./connection.dto";
import { ConnectionService } from "./connection.service";

@Controller('api/db')
export class ConnectionController {
    constructor(private readonly dbService: ConnectionService) {}
    
    private client: Client;
    public user: string 
    public pass: string;

    @Post('test-connection')
    async testConnectionToDB(@Body() body: ConnectionDto): Promise<string> {
        this.client = new Client ({
            host: body.host,
            database: body.database,
            user: body.username,
            password: body.password,
            port: 5432,
        })

        return this.dbService.testConnection(this.client);
    }

    @Post('connect')
    async connectToDB(@Body() body: ConnectionDto): Promise<string> {
        this.client = new Client ({
            host: body.host,
            database: body.database,
            user: body.username,
            password: body.password,
            port: 5432,
        })

        const res = await this.dbService.connectDB(this.client);
        return res;
    }

    @Get('disconnect')
    async disconnectFromDB() :Promise<string> {
        return this.dbService.disconnectDB(this.client);
    }

    @Post('execute')
    async executeDB(
        @Body() body: { query: string, params: any[] },
        @Query('limit') limit: number,
        @Query('page') page: number,
    ) :Promise<any> {
        return this.dbService.execute(this.client, body.query, body.params, limit, page);
    }
}