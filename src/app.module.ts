import { Module } from '@nestjs/common';
import { ConnectionModule } from './connection/connection.module';
import { ConnectionService } from './connection/connection.service';

@Module({
  imports: [ConnectionModule],
  providers: [ConnectionService],
  exports: [ConnectionService],
})

export class AppModule {}
