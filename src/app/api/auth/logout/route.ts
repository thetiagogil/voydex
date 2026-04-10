import { signOut } from "@/features/auth/server/auth";
import { NextResponse } from "next/server";

export async function POST() {
  try {
    const { error } = await signOut();
    if (error) return NextResponse.json(error.message, { status: 400 });
    return NextResponse.json({ ok: true }, { status: 200 });
  } catch {
    return NextResponse.json(
      { message: "Service unavailable" },
      { status: 503 },
    );
  }
}
