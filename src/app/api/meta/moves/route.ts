import { getMoves } from "@/services/moves";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getMoves();
  if (error) return NextResponse.json({ error }, { status: 500 });
  if (!data) return NextResponse.json({ error: "Not data" }, { status: 404 });
  return NextResponse.json(data, { status: 200 });
}
