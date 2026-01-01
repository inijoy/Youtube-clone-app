⚙️ Setup Environment Variables

This project uses environment variables for API keys and secrets. Do not commit your .env.local.

Steps

Copy the example file:

# Mac/Linux
cp .env.example .env.local

# Windows PowerShell
copy .env.example .env.local


Edit .env.local with your own keys:

API_KEY=your_api_key_here
ANOTHER_SECRET=your_secret_here


Run the project:

npm install
npm start


⚠️ .env.local is ignored by Git, so your secrets stay safe.