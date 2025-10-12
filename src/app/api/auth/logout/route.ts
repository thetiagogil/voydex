import { signOut } from "@/services/auth";
import { NextResponse } from "next/server";

export async function POST() {
  const { error } = await signOut();
  if (error) return NextResponse.json(error.message, { status: 400 });
  return NextResponse.json({ ok: true }, { status: 200 });
}
