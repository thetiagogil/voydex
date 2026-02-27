import { getClaims } from "@/services/auth";
import { NextResponse } from "next/server";

export async function GET() {
  try {
    const { data, error } = await getClaims();
    if (error) return NextResponse.json(error.message, { status: 400 });
    return NextResponse.json(data ? true : false, { status: 200 });
  } catch {
    return NextResponse.json("Service unavailable", { status: 503 });
  }
}
