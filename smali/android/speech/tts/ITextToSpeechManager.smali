# classes3.dex

.class public interface abstract Landroid/speech/tts/ITextToSpeechManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechManager$Stub;,
        Landroid/speech/tts/ITextToSpeechManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechManager"


# virtual methods
.method public abstract createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
