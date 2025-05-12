const { PrismaClient } = require('@prisma/client'); // sadece PrismaClient sınıfını al
const express = require('express');

const prisma = new PrismaClient();
const app = express();

app.use(express.json());

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
    console.log("Server Listening on PORT")
})

app.get('/status', (request, response) => {
    const status = {
        'Status': 'Running'
    };

    response.send(status);
});

app.get('/users', async (req, res) => {
    const users = await prisma.user.findMany()
    res.json(users)
})