# classes3.dex

.class public interface abstract Landroid/speech/tts/ITextToSpeechSession;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechSession$Stub;,
        Landroid/speech/tts/ITextToSpeechSession$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechSession"


# virtual methods
.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
