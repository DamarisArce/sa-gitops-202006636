const { Pool } = require('pg');

const pool = new Pool({
  host: process.env.DB_HOST || 'postgres',
  port: Number(process.env.DB_PORT) || 5432,
  user: process.env.DB_USER || 'sa',
  password: process.env.DB_PASSWORD || 'SA_P9_StrongPass_2026',
  database: process.env.DB_NAME || 'pharmadb',
  max: 10,
  idleTimeoutMillis: 30000,
});

async function initDb() {
  await pool.query(`
    CREATE TABLE IF NOT EXISTS orders (
      id SERIAL PRIMARY KEY,
      username TEXT NOT NULL,
      medicine_id INTEGER NOT NULL,
      quantity INTEGER NOT NULL,
      total_price REAL NOT NULL,
      status TEXT DEFAULT 'PENDIENTE',
      created_at TIMESTAMPTZ DEFAULT NOW()
    )
  `);
  console.log('[PostgreSQL] Tabla orders lista');
}

module.exports = { pool, initDb };