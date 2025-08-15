const { PrismaClient } = require('@prisma/client');
const fs = require('fs');
const path = require('path');
require('dotenv').config();

const prisma = new PrismaClient();

// only selected tables
const tableFileMap = {
  Account: 'account.json',
  City: 'city.json',
  State: 'state.json',
  User: 'users.json',
};

async function seed() {
  for (const [table, filename] of Object.entries(tableFileMap)) {
    const filePath = path.join(__dirname, '../data', filename);
    const data = JSON.parse(fs.readFileSync(filePath, 'utf8'));

    console.log(`⏳ Seeding ${data.length} records into '${table}'...`);

    for (const record of data) {
      await prisma[table].create({ data: record });
    }

    console.log(`✅ Finished seeding '${table}'`);
  }

  await prisma.$disconnect();
}

seed().catch((e) => {
  console.error(e);
  prisma.$disconnect();
  process.exit(1);
});