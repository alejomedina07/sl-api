import { Column, Entity, Index, PrimaryGeneratedColumn } from "typeorm";

@Index("user_validation_pk", ["id"], { unique: true })
@Entity("user_validation", { schema: "USR" })
export class UserValidation {
  @PrimaryGeneratedColumn({ type: "integer", name: "id" })
  id: number;

  @Column("character varying", {
    name: "postal_code",
    nullable: true,
    length: 20,
  })
  postalCode: string | null;

  @Column("text", { name: "document_number" })
  documentNumber: string;

  @Column("text", { name: "document_front" })
  documentFront: string;

  @Column("text", { name: "document_back" })
  documentBack: string;

  @Column("timestamp without time zone", {
    name: "created_at",
    nullable: true,
    default: () => "now()",
  })
  createdAt: Date | null;
}
