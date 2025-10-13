import { logIn } from "@/services/auth";
import { type NextRequest, NextResponse } from "next/server";

export async function POST(req: NextRequest) {
  const { email, password } = await req.json();
  const { data, error } = await logIn({ email, password });
  if (error)
    return NextResponse.json({ message: error.message }, { status: 400 });
  return NextResponse.json({ user: data }, { status: 200 });
}
