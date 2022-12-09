import { Column, Entity, Index, PrimaryGeneratedColumn } from "typeorm";

@Index("city_pk", ["id"], { unique: true })
@Entity("city", { schema: "CFG" })
export class City {
  @PrimaryGeneratedColumn({ type: "integer", name: "id" })
  id: number;

  @Column("text", { name: "name" })
  name: string;

  @Column("text", { name: "code_dane" })
  codeDane: string;
}
