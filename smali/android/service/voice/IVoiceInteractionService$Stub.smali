# classes3.dex

.class public abstract Landroid/service/voice/IVoiceInteractionService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/voice/IVoiceInteractionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IVoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IVoiceInteractionService"

.field static final TRANSACTION_getActiveServiceSupportedActions:I = 0x5

.field static final TRANSACTION_launchVoiceAssistFromKeyguard:I = 0x4

.field static final TRANSACTION_ready:I = 0x1

.field static final TRANSACTION_shutdown:I = 0x3

.field static final TRANSACTION_soundModelsChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.voice.IVoiceInteractionService"

    invoke-virtual {p0, p0, v0}, Landroid/service/voice/IVoiceInteractionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.voice.IVoiceInteractionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/voice/IVoiceInteractionService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/voice/IVoiceInteractionService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/voice/IVoiceInteractionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x5
    const-string v0, "getActiveServiceSupportedActions"

    return-object v0

    :pswitch_8  #0x4
    const-string/jumbo v0, "launchVoiceAssistFromKeyguard"

    return-object v0

    :pswitch_c  #0x3
    const-string/jumbo v0, "shutdown"

    return-object v0

    :pswitch_10  #0x2
    const-string/jumbo v0, "soundModelsChanged"

    return-object v0

    :pswitch_14  #0x1
    const-string/jumbo v0, "ready"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14  #00000001
        :pswitch_10  #00000002
        :pswitch_c  #00000003
        :pswitch_8  #00000004
        :pswitch_5  #00000005
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/service/voice/IVoiceInteractionService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.service.voice.IVoiceInteractionService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_40

    packed-switch p1, :pswitch_data_46

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceActionCheckCallback;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/service/voice/IVoiceInteractionService$Stub;->getActiveServiceSupportedActions(Ljava/util/List;Lcom/android/internal/app/IVoiceActionCheckCallback;)V

    goto :goto_3f

    :pswitch_2f  #0x4
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->launchVoiceAssistFromKeyguard()V

    goto :goto_3f

    :pswitch_33  #0x3
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->shutdown()V

    goto :goto_3f

    :pswitch_37  #0x2
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->soundModelsChanged()V

    goto :goto_3f

    :pswitch_3b  #0x1
    invoke-virtual {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;->ready()V

    nop

    :goto_3f
    return v1

    :pswitch_data_40
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3b  #00000001
        :pswitch_37  #00000002
        :pswitch_33  #00000003
        :pswitch_2f  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method
