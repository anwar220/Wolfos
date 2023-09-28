# classes3.dex

.class public abstract Landroid/speech/IRecognitionListener$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/speech/IRecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/IRecognitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.speech.IRecognitionListener"

.field static final TRANSACTION_onBeginningOfSpeech:I = 0x2

.field static final TRANSACTION_onBufferReceived:I = 0x4

.field static final TRANSACTION_onEndOfSegmentedSession:I = 0xa

.field static final TRANSACTION_onEndOfSpeech:I = 0x5

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onEvent:I = 0xb

.field static final TRANSACTION_onPartialResults:I = 0x8

.field static final TRANSACTION_onReadyForSpeech:I = 0x1

.field static final TRANSACTION_onResults:I = 0x7

.field static final TRANSACTION_onRmsChanged:I = 0x3

.field static final TRANSACTION_onSegmentResults:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.speech.IRecognitionListener"

    invoke-virtual {p0, p0, v0}, Landroid/speech/IRecognitionListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/speech/IRecognitionListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.speech.IRecognitionListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/speech/IRecognitionListener;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/speech/IRecognitionListener;

    return-object v1

    :cond_14
    new-instance v1, Landroid/speech/IRecognitionListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/speech/IRecognitionListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_32

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xb
    const-string/jumbo v0, "onEvent"

    return-object v0

    :pswitch_9  #0xa
    const-string/jumbo v0, "onEndOfSegmentedSession"

    return-object v0

    :pswitch_d  #0x9
    const-string/jumbo v0, "onSegmentResults"

    return-object v0

    :pswitch_11  #0x8
    const-string/jumbo v0, "onPartialResults"

    return-object v0

    :pswitch_15  #0x7
    const-string/jumbo v0, "onResults"

    return-object v0

    :pswitch_19  #0x6
    const-string/jumbo v0, "onError"

    return-object v0

    :pswitch_1d  #0x5
    const-string/jumbo v0, "onEndOfSpeech"

    return-object v0

    :pswitch_21  #0x4
    const-string/jumbo v0, "onBufferReceived"

    return-object v0

    :pswitch_25  #0x3
    const-string/jumbo v0, "onRmsChanged"

    return-object v0

    :pswitch_29  #0x2
    const-string/jumbo v0, "onBeginningOfSpeech"

    return-object v0

    :pswitch_2d  #0x1
    const-string/jumbo v0, "onReadyForSpeech"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2d  #00000001
        :pswitch_29  #00000002
        :pswitch_25  #00000003
        :pswitch_21  #00000004
        :pswitch_1d  #00000005
        :pswitch_19  #00000006
        :pswitch_15  #00000007
        :pswitch_11  #00000008
        :pswitch_d  #00000009
        :pswitch_9  #0000000a
        :pswitch_5  #0000000b
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xa

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/speech/IRecognitionListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.speech.IRecognitionListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_9a

    packed-switch p1, :pswitch_data_a0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/speech/IRecognitionListener$Stub;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_98

    :pswitch_2f  #0xa
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onEndOfSegmentedSession()V

    goto :goto_98

    :pswitch_33  #0x9
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onSegmentResults(Landroid/os/Bundle;)V

    goto :goto_98

    :pswitch_42  #0x8
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onPartialResults(Landroid/os/Bundle;)V

    goto :goto_98

    :pswitch_51  #0x7
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onResults(Landroid/os/Bundle;)V

    goto :goto_98

    :pswitch_60  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onError(I)V

    goto :goto_98

    :pswitch_6b  #0x5
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onEndOfSpeech()V

    goto :goto_98

    :pswitch_6f  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onBufferReceived([B)V

    goto :goto_98

    :pswitch_7a  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onRmsChanged(F)V

    goto :goto_98

    :pswitch_85  #0x2
    invoke-virtual {p0}, Landroid/speech/IRecognitionListener$Stub;->onBeginningOfSpeech()V

    goto :goto_98

    :pswitch_89  #0x1
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/speech/IRecognitionListener$Stub;->onReadyForSpeech(Landroid/os/Bundle;)V

    nop

    :goto_98
    return v1

    nop

    :pswitch_data_9a
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_89  #00000001
        :pswitch_85  #00000002
        :pswitch_7a  #00000003
        :pswitch_6f  #00000004
        :pswitch_6b  #00000005
        :pswitch_60  #00000006
        :pswitch_51  #00000007
        :pswitch_42  #00000008
        :pswitch_33  #00000009
        :pswitch_2f  #0000000a
        :pswitch_1c  #0000000b
    .end packed-switch
.end method
