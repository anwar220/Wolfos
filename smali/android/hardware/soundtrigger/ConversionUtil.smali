# classes2.dex

.class Landroid/hardware/soundtrigger/ConversionUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aidl2apiAudioCapabilities(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    return v0
.end method

.method public static aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;
    .registers 3

    if-eqz p0, :cond_7

    invoke-static {p0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioConfig_AudioFormat(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0

    :cond_7
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public static aidl2apiConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .registers 4

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    iget v1, p0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    iget v2, p0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    return-object v0
.end method

.method public static aidl2apiModelParameterRange(Landroid/media/soundtrigger/ModelParameterRange;)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    iget v1, p0, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    iget v2, p0, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;-><init>(II)V

    return-object v0
.end method

.method public static aidl2apiModuleDescriptor(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    new-instance v19, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-object/from16 v2, v19

    iget v3, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    iget-object v4, v1, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    iget-object v5, v1, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    iget v7, v1, Landroid/media/soundtrigger/Properties;->version:I

    iget-object v8, v1, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    iget v9, v1, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    iget v10, v1, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    iget v11, v1, Landroid/media/soundtrigger/Properties;->maxUsers:I

    iget v12, v1, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    invoke-static {v12}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionModes(I)I

    move-result v12

    iget-boolean v13, v1, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    iget v14, v1, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    iget-boolean v15, v1, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    iget v0, v1, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    move/from16 v16, v0

    iget-boolean v0, v1, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    move/from16 v17, v0

    iget v0, v1, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioCapabilities(I)I

    move-result v18

    invoke-direct/range {v2 .. v18}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    return-object v19
.end method

.method public static aidl2apiPhraseRecognitionEvent(IILandroid/media/soundtrigger/PhraseRecognitionEvent;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .registers 18

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v1, v1

    new-array v1, v1, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    const/4 v2, 0x0

    :goto_8
    iget-object v3, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    iget-object v3, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1a
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-object v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;

    move-result-object v13

    new-instance v14, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v3, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v5, v2, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v7, v2, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v8, v2, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v9, v2, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-object v11, v2, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    move-object v2, v14

    move v4, p0

    move/from16 v6, p1

    move-object v10, v13

    move-object v12, v1

    invoke-direct/range {v2 .. v12}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)V

    return-object v14
.end method

.method public static aidl2apiPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .registers 6

    iget-object v0, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v0, v0

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v2, v2

    if-ge v1, v2, :cond_18

    iget-object v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_18
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    iget v3, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionModes(I)I

    move-result v3

    iget v4, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    return-object v1
.end method

.method public static aidl2apiRecognitionEvent(IILandroid/media/soundtrigger/RecognitionEvent;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .registers 16

    iget-object v0, p2, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;

    move-result-object v0

    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    iget v3, p2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    iget-boolean v5, p2, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    iget v7, p2, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    iget v8, p2, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    iget-boolean v9, p2, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    iget-object v11, p2, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    iget-boolean v12, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    move-object v2, v1

    move v4, p0

    move v6, p1

    move-object v10, v0

    invoke-direct/range {v2 .. v12}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[BZ)V

    return-object v1
.end method

.method public static aidl2apiRecognitionModes(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x8

    :cond_19
    return v0
.end method

.method public static api2aidlAudioCapabilities(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    return v0
.end method

.method public static api2aidlConfidenceLevel(Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;
    .registers 3

    new-instance v0, Landroid/media/soundtrigger/ConfidenceLevel;

    invoke-direct {v0}, Landroid/media/soundtrigger/ConfidenceLevel;-><init>()V

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    return-object v0
.end method

.method public static api2aidlGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Landroid/media/soundtrigger/SoundModel;
    .registers 2

    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger/SoundModel;

    move-result-object v0

    return-object v0
.end method

.method public static api2aidlModelParameter(I)I
    .registers 2

    packed-switch p0, :pswitch_data_8

    const/4 v0, -0x1

    return v0

    :pswitch_5  #0x0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5  #00000000
    .end packed-switch
.end method

.method public static api2aidlPhrase(Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)Landroid/media/soundtrigger/Phrase;
    .registers 4

    new-instance v0, Landroid/media/soundtrigger/Phrase;

    invoke-direct {v0}, Landroid/media/soundtrigger/Phrase;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/Phrase;->id:I

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Phrase;->users:[I

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    return-object v0
.end method

.method public static api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;
    .registers 5

    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionExtra;-><init>()V

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger/ConfidenceLevel;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    const/4 v1, 0x0

    :goto_1d
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v2, v2

    if-ge v1, v2, :cond_31

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlConfidenceLevel(Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_31
    return-object v0
.end method

.method public static api2aidlPhraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Landroid/media/soundtrigger/PhraseSoundModel;
    .registers 5

    new-instance v0, Landroid/media/soundtrigger/PhraseSoundModel;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseSoundModel;-><init>()V

    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger/SoundModel;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger/Phrase;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhrase(Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)Landroid/media/soundtrigger/Phrase;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2d
    return-object v0
.end method

.method public static api2aidlRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/media/soundtrigger/RecognitionConfig;
    .registers 5

    new-instance v0, Landroid/media/soundtrigger/RecognitionConfig;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionConfig;-><init>()V

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->captureRequested:Z

    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    const/4 v1, 0x0

    :goto_11
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length v2, v2

    if-ge v1, v2, :cond_25

    iget-object v2, v0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_25
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->audioCapabilities:I

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlAudioCapabilities(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->audioCapabilities:I

    return-object v0
.end method

.method public static api2aidlRecognitionModes(I)I
    .registers 3

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x1

    :cond_7
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_d

    or-int/lit8 v0, v0, 0x2

    :cond_d
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_13

    or-int/lit8 v0, v0, 0x4

    :cond_13
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_19

    or-int/lit8 v0, v0, 0x8

    :cond_19
    return v0
.end method

.method public static api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger/SoundModel;
    .registers 4

    new-instance v0, Landroid/media/soundtrigger/SoundModel;

    invoke-direct {v0}, Landroid/media/soundtrigger/SoundModel;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/SoundModel;->type:I

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v1

    const-string v2, "SoundTrigger SoundModel"

    invoke-static {v1, v2}, Landroid/hardware/soundtrigger/ConversionUtil;->byteArrayToSharedMemory([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    array-length v2, v1

    iput v2, v0, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    return-object v0
.end method

.method public static api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static byteArrayToSharedMemory([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    array-length v0, p0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    return-object v0

    :cond_5
    if-eqz p1, :cond_9

    move-object v0, p1

    goto :goto_b

    :cond_9
    :try_start_9
    const-string v0, ""

    :goto_b
    array-length v1, p0

    invoke-static {v0, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_22

    return-object v2

    :catch_22
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
