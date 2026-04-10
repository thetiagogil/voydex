import { signUp } from "@/features/auth/server/auth";
import { type NextRequest, NextResponse } from "next/server";

export async function POST(req: NextRequest) {
  try {
    const { email, password } = await req.json();
    const { data, error } = await signUp({ email, password });
    if (error)
      return NextResponse.json({ message: error.message }, { status: 400 });
    return NextResponse.json({ user: data }, { status: 200 });
  } catch {
    return NextResponse.json(
      { message: "Service unavailable" },
      { status: 503 },
    );
  }
}
