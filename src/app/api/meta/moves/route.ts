import { getMoves } from "@/services/meta/moves";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getMoves();

  if (error) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }

  return NextResponse.json(data);
}
