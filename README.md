# Multilingual Translation Platform

A comprehensive translation solution powered by Azure OpenAI and Azure Translator services.

## Overview

This web application provides an integrated platform combining two powerful translation tools designed for professional use. The solution offers an intuitive interface for both article and document translation needs.

## Features

### Article Translation Engine
- Leverages Azure OpenAI GPT-4 for contextually accurate translations
- Automatically processes web content from URLs
- Maintains markdown formatting
- Supports multiple language pairs
- Enables translated content downloads
- Features a user-friendly interface

### Document Translation Service
- Built on Azure Translator API
- Specialized in .docx file processing
- Supports various language combinations
- Maintains original document formatting
- Simple file upload interface
- Direct download of translated files

## Technical Stack

### Core Technologies
- Python (3.12+)
- Streamlit (1.39.0+)
- Azure OpenAI Service
- Azure Translator API

### Key Dependencies
- streamlit-lottie for UI animations
- python-docx for Word document handling
- beautifulsoup4 for web content extraction
- python-dotenv for environment configuration

## Project Structure

```
./
├── data/               # Project data storage
├── img/               # Image assets
├── notebook/          # Development notebooks
├── src/               # Source code
│   └── app.py         # Main application
├── Dockerfile         # Container configuration
├── docker-compose.yml # Docker orchestration
├── requirements.txt   # Project dependencies
└── README.md         # Documentation
```

## Prerequisites

- Python 3.12+
- Poetry dependency manager
- Azure account with active subscriptions:
  - Azure OpenAI
  - Azure Translator
- Docker (optional)

## Deployment Options

### Local Development with Poetry

1. Clone repository:
```bash
git clone https://github.com/Jcnok/Bootcamp-Microsoft-Certification-Challenge--1-AI_102.git
```

2. Navigate to project:
```bash
cd Bootcamp-Microsoft-Certification-Challenge--1-AI_102
```

3. Install Poetry:
```bash
curl -sSL https://install.python-poetry.org | python3 -
```

4. Setup environment:
```bash
poetry install
```

5. Configure environment variables:
```bash
cp .env.example .env
```

6. Update .env with credentials:
```
AZURE_OPENAI_KEY=your_key
AZURE_ENDPOINT=your_endpoint
TRANSLATOR_API_KEY=your_key
TRANSLATOR_ENDPOINT=your_endpoint
TRANSLATOR_LOCATION=your_location
```

7. Launch application:
```bash
poetry run streamlit run desafios_de_projeto/desafio_1/src/app.py
```

### Docker Deployment

1. Navigate to Dockerfile directory:
```bash
cd desafios_de_projeto/desafio_1/
```

2. Build and run:
```bash
docker-compose up --build
```

3. Access at: http://localhost:8501

4. Shutdown:
```bash
docker-compose down
```

## Development Insights

This project represents a successful integration of multiple Azure services to create an enterprise-grade translation solution. The development process focused on delivering accurate, context-aware translations while maintaining document integrity.

## Future Enhancements

The roadmap includes:
- Additional file format support
- Text sentiment analysis integration
- REST API implementation
- Usage analytics dashboard

This platform demonstrates the potential of combining modern cloud services to create robust, scalable enterprise solutions.
