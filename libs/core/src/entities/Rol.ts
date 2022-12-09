import { Column, Entity, Index, PrimaryGeneratedColumn } from "typeorm";

@Index("rol_pk", ["id"], { unique: true })
@Entity("rol", { schema: "CFG" })
export class Rol {
  @PrimaryGeneratedColumn({ type: "integer", name: "id" })
  id: number;

  @Column("text", { name: "name" })
  name: string;

  @Column("text", { name: "description", nullable: true })
  description: string | null;
}
