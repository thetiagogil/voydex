import { getAbilities } from "@/services/abilities";
import { NextResponse } from "next/server";

export async function GET() {
  const { data, error } = await getAbilities();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json(data);
}
