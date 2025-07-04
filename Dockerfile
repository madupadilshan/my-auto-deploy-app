# Base image එක ලෙස Node.js හි 14 වන සංස්කරණය භාවිතා කරන්න
FROM node:14

# App එක සඳහා directory එකක් සාදන්න
WORKDIR /usr/src/app

# App dependencies සඳහා package.json ගොනු copy කරන්න
COPY package*.json ./

# Dependencies ස්ථාපනය කරන්න
RUN npm install

# App source කේතය copy කරන්න
COPY . .

# යෙදුම 3000 port එකෙන් නිරාවරණය කරන්න
EXPOSE 3000

# Container එක ආරම්භ වූ විට යෙදුම ක්‍රියාත්මක කරන්න
CMD [ "node", "app.js" ]