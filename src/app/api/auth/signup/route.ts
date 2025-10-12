import { signUp } from "@/services/auth";
import { revalidatePath } from "next/cache";
import { type NextRequest, NextResponse } from "next/server";

export async function POST(req: NextRequest) {
  const { email, password } = await req.json();
  const { data, error } = await signUp({ email, password });
  if (error) return NextResponse.json(error.message, { status: 400 });

  revalidatePath("/");
  return NextResponse.json({ user: data }, { status: 200 });
}
