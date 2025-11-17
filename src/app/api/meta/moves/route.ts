import { getMoves } from "@/services/moves";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getMoves();
  if (error) return NextResponse.json(error.message, { status: 400 });
  return NextResponse.json(data, { status: 200 });
}
