# classes2.dex

.class public abstract Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onModelUnloaded:I = 0x4

.field static final TRANSACTION_onModuleDied:I = 0x5

.field static final TRANSACTION_onPhraseRecognition:I = 0x2

.field static final TRANSACTION_onRecognition:I = 0x1

.field static final TRANSACTION_onResourcesAvailable:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_5e

    packed-switch p1, :pswitch_data_64

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x5
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onModuleDied()V

    goto :goto_5d

    :pswitch_20  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onModelUnloaded(I)V

    goto :goto_5d

    :pswitch_2b  #0x3
    invoke-virtual {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onResourcesAvailable()V

    goto :goto_5d

    :pswitch_2f  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/soundtrigger/PhraseRecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/PhraseRecognitionEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onPhraseRecognition(ILandroid/media/soundtrigger/PhraseRecognitionEvent;I)V

    goto :goto_5d

    :pswitch_46  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/media/soundtrigger/RecognitionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/soundtrigger/RecognitionEvent;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/media/soundtrigger_middleware/ISoundTriggerCallback$Stub;->onRecognition(ILandroid/media/soundtrigger/RecognitionEvent;I)V

    nop

    :goto_5d
    return v1

    :pswitch_data_5e
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_2f  #00000002
        :pswitch_2b  #00000003
        :pswitch_20  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method
