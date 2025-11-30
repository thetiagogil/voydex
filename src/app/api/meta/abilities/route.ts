import { getAbilities } from "@/services/meta/abilities";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getAbilities();

  if (error) {
    return NextResponse.json(
      { error: error instanceof Error ? error.message : String(error) },
      { status: 500 },
    );
  }

  return NextResponse.json(data);
}
