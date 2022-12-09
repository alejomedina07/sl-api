import { Column, Entity, Index, PrimaryGeneratedColumn } from "typeorm";

@Index("departmet_pk", ["id"], { unique: true })
@Entity("departmet", { schema: "CFG" })
export class Departmet {
  @PrimaryGeneratedColumn({ type: "integer", name: "id" })
  id: number;

  @Column("text", { name: "name" })
  name: string;

  @Column("text", { name: "code_dane" })
  codeDane: string;
}
