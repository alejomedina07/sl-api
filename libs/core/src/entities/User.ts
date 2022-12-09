import { Column, Entity, Index, PrimaryGeneratedColumn } from "typeorm";

@Index("user_pk", ["id"], { unique: true })
@Entity("user", { schema: "USR" })
export class User {
  @PrimaryGeneratedColumn({ type: "integer", name: "id" })
  id: number;

  @Column("character varying", { name: "phone_number", length: 15 })
  phoneNumber: string;

  @Column("character varying", { name: "email", length: 100 })
  email: string;

  @Column("text", { name: "password" })
  password: string;
}
