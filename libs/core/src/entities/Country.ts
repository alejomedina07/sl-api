import { Column, Entity, Index } from "typeorm";

@Index("country_pk", ["id"], { unique: true })
@Entity("country", { schema: "CFG" })
export class Country {
  @Column("text", { name: "name" })
  name: string;

  @Column("text", { name: "description", nullable: true })
  description: string | null;

  @Column("timestamp without time zone", {
    name: "created_at",
    nullable: true,
    default: () => "now()",
  })
  createdAt: Date | null;
}
