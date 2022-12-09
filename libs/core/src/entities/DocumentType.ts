import { Column, Entity, Index, PrimaryGeneratedColumn } from "typeorm";

@Index("document_type_pk", ["id"], { unique: true })
@Entity("document_type", { schema: "USR" })
export class DocumentType {
  @PrimaryGeneratedColumn({ type: "integer", name: "id" })
  id: number;

  @Column("text", { name: "name" })
  name: string;

  @Column("text", { name: "description", nullable: true })
  description: string | null;

  @Column("character varying", {
    name: "status",
    nullable: true,
    length: 20,
    default: () => "'active'",
  })
  status: string | null;

  @Column("timestamp without time zone", {
    name: "created_at",
    nullable: true,
    default: () => "now()",
  })
  createdAt: Date | null;
}
