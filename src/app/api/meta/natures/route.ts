import { getNatures } from "@/services/meta/natures";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getNatures();

  if (error) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }

  return NextResponse.json(data);
}
