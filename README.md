# OpenAI Whisper - Local Test

This repository provides a simple setup and usage guide for transcribing audio files to text in English and Hindi using OpenAI's Whisper model.

## Folder Structure
```
OpenAIwhisper-LocalTest/
├── README.md
├── install_venv.sh
├── requirements.txt
├── Dataset/
│   ├── Arzoooutput hindi.wav
│   └── Pankaj sir audio.wav
├── Research/
│   └── 1.Base.ipynb
└── output/
    ├── hinditranscription.txt
    └── transcription.txt
```

## Installation

### Step 1: Create and Activate Virtual Environment
```sh
# Create the virtual environment
python3 -m venv linuxvenv

# Activate virtual environment (Ubuntu/Linux)
source linuxvenv/bin/activate

# Upgrade pip
python -m pip install --upgrade pip
```

### Step 2: Install Required Dependencies
```sh
pip install -r requirements.txt
```

## Required Libraries
- JupyterLab
- OpenAI Whisper
- ffmpeg-python

## Dataset
Audio files to be transcribed are placed in the `Dataset` directory:
- `Arzoooutput hindi.wav` (Hindi audio example)
- `Pankaj sir audio.wav` (English audio example)

## Usage

### Transcription using Jupyter Notebook
Open and run the provided notebook in the `Research` directory:
- `1.Base.ipynb`

The notebook includes code blocks to:
- Transcribe English audio
- Transcribe Hindi audio

### Running Transcription (CLI Example)
You can use Whisper directly from the command line as well:

```sh
whisper "Dataset/Pankaj sir audio.wav" --model base --language en
whisper "Dataset/Arzoooutput hindi.wav" --model medium --language hi
```

## Output
Transcribed text files will be saved in the `output` directory:
- English transcription: `transcription.txt`
- Hindi transcription: `hinditranscription.txt`

## Example Outputs

**English Transcription:**
```
Okay, next person is your supervisor...
```

**Hindi Transcription:**
```
मुझे अपनी आवाज विक्सित करने में काफी समय लगा और अब जब यह है तो मैं चुप नहीं रहने वाली
```

## Notes
- Choose Whisper models based on required accuracy and performance:
  - `tiny`, `base` - Faster, less accurate
  - `small`, `medium`, `large` - More accurate, slower


