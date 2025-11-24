import { getMoves } from "@/services/moves";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getMoves();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json(data);
}
