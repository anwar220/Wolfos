# classes3.dex

.class public interface abstract Landroid/speech/tts/TtsEnginesInjectorStub;
.super Ljava/lang/Object;


# direct methods
.method public static newInstance()Landroid/speech/tts/TtsEnginesInjectorStub;
    .registers 1

    const-class v0, Landroid/speech/tts/TtsEnginesInjectorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/TtsEnginesInjectorStub;

    return-object v0
.end method


# virtual methods
.method public abstract findFirstEngineSupportLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
.end method

.method public abstract getRecommendEngineForLocale(Landroid/speech/tts/TtsEngines;Ljava/util/Locale;)Ljava/lang/String;
.end method
