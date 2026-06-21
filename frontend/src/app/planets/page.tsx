"use client";
import { useEffect, useState } from "react";
import { getPlanets } from "@/lib/api";
import type { Planet } from "@/types";

const API_BASE = "http://localhost:8000";

export default function AllPlanets() {
  const [planets, setPlanets] = useState<Planet[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    getPlanets()
      .then(setPlanets)
      .finally(() => setLoading(false));
  }, []);

  if (loading) return <div className="page"><p>載入中...</p></div>;

  return (
    <div className="page">
      <h1>星球地圖</h1>
      <div className="card-grid">
        {planets.map((p) => (
          <div key={p.planet_ID} className="card">
            {p.photo && (
              <img
                src={`${API_BASE}/img/${p.photo}`}
                alt={p.planet_Name}
                className="card-img"
              />
            )}
            <div className="card-body">
              <h3>{p.planet_Name}</h3>
              {p.goto && (
                <a href={p.goto} target="_blank" rel="noreferrer">前往</a>
              )}
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
