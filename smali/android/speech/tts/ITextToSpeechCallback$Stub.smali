# classes3.dex

.class public abstract Landroid/speech/tts/ITextToSpeechCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/speech/tts/ITextToSpeechCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechCallback"

.field static final TRANSACTION_onAudioAvailable:I = 0x6

.field static final TRANSACTION_onBeginSynthesis:I = 0x5

.field static final TRANSACTION_onError:I = 0x4

.field static final TRANSACTION_onRangeStart:I = 0x7

.field static final TRANSACTION_onStart:I = 0x1

.field static final TRANSACTION_onStop:I = 0x3

.field static final TRANSACTION_onSuccess:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    invoke-virtual {p0, p0, v0}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/tts/ITextToSpeechCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/tts/ITextToSpeechCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/speech/tts/ITextToSpeechCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/tts/ITextToSpeechCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_22

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x7
    const-string/jumbo v0, "onRangeStart"

    return-object v0

    :pswitch_9  #0x6
    const-string/jumbo v0, "onAudioAvailable"

    return-object v0

    :pswitch_d  #0x5
    const-string/jumbo v0, "onBeginSynthesis"

    return-object v0

    :pswitch_11  #0x4
    const-string/jumbo v0, "onError"

    return-object v0

    :pswitch_15  #0x3
    const-string/jumbo v0, "onStop"

    return-object v0

    :pswitch_19  #0x2
    const-string/jumbo v0, "onSuccess"

    return-object v0

    :pswitch_1d  #0x1
    const-string/jumbo v0, "onStart"

    return-object v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_19  #00000002
        :pswitch_15  #00000003
        :pswitch_11  #00000004
        :pswitch_d  #00000005
        :pswitch_9  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.speech.tts.ITextToSpeechCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_8e

    packed-switch p1, :pswitch_data_94

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onRangeStart(Ljava/lang/String;III)V

    goto :goto_8d

    :pswitch_33  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onAudioAvailable(Ljava/lang/String;[B)V

    goto :goto_8d

    :pswitch_42  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onBeginSynthesis(Ljava/lang/String;III)V

    goto :goto_8d

    :pswitch_59  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onError(Ljava/lang/String;I)V

    goto :goto_8d

    :pswitch_68  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onStop(Ljava/lang/String;Z)V

    goto :goto_8d

    :pswitch_77  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onSuccess(Ljava/lang/String;)V

    goto :goto_8d

    :pswitch_82  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/speech/tts/ITextToSpeechCallback$Stub;->onStart(Ljava/lang/String;)V

    nop

    :goto_8d
    return v1

    :pswitch_data_8e
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_82  #00000001
        :pswitch_77  #00000002
        :pswitch_68  #00000003
        :pswitch_59  #00000004
        :pswitch_42  #00000005
        :pswitch_33  #00000006
        :pswitch_1c  #00000007
    .end packed-switch
.end method
