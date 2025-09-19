# Qdrant Vector Space Data 2025 - Hands-on GraphRAG

Slides and code for the Hands-on GraphRAG tutorial at [Qdrant Vector Space Day 2025](https://qdrant.tech/blog/vector-space-day-2025/).

## Slides

You can view the slides [here](https://docs.google.com/presentation/d/1k96d2hR09K7zu0XJNha2CTuJq5lmKd8Birg9d0yKuMU/edit?usp=sharing)

They are also available in the `slides` folder as a PDF and PowerPoint file.

## Agent Examples

### OpenAI 

You will need an OpenAI API key to run the code. You can get one from [OpenAI](https://platform.openai.com/).

### Neo4j Database

You will need a a Neo4j Database to run the code. You can use a free instance from [Neo4j Aura](https://console.neo4j.io).

Run the `cypher\00_load.cypher` Cypher statement to load the sample data into your database.

### Environment Variables

Make a copy of the `.env.example` file and rename it to `.env`. Then fill in your OpenAI API key and Neo4j connection details.

```
OPENAI_API_KEY="sk-"
NEO4J_URI="neo4j://"
NEO4J_USERNAME="neo4j"
NEO4J_PASSWORD=""
```

### Run the examples

Install the dependencies:

```bash
pip install -r requirements.txt
```

Vector RAG agent:

```bash
python agent/01_rag_agent.py
```

Graph RAG agent:

```bash
python agent/02_graphrag_agent.py
```
