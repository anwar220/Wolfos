# classes4.dex

.class public abstract Lcom/android/internal/telecom/ICallDiagnosticService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_callQualityChanged:I = 0x7

.field static final TRANSACTION_initializeDiagnosticCall:I = 0x2

.field static final TRANSACTION_notifyCallDisconnected:I = 0x9

.field static final TRANSACTION_receiveBluetoothCallQualityReport:I = 0x8

.field static final TRANSACTION_receiveDeviceToDeviceMessage:I = 0x6

.field static final TRANSACTION_removeDiagnosticCall:I = 0x5

.field static final TRANSACTION_setAdapter:I = 0x1

.field static final TRANSACTION_updateCall:I = 0x3

.field static final TRANSACTION_updateCallAudioState:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallDiagnosticService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallDiagnosticService;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_28

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x9
    const-string/jumbo v0, "notifyCallDisconnected"

    return-object v0

    :pswitch_9  #0x8
    const-string/jumbo v0, "receiveBluetoothCallQualityReport"

    return-object v0

    :pswitch_d  #0x7
    const-string v0, "callQualityChanged"

    return-object v0

    :pswitch_10  #0x6
    const-string/jumbo v0, "receiveDeviceToDeviceMessage"

    return-object v0

    :pswitch_14  #0x5
    const-string/jumbo v0, "removeDiagnosticCall"

    return-object v0

    :pswitch_18  #0x4
    const-string/jumbo v0, "updateCallAudioState"

    return-object v0

    :pswitch_1c  #0x3
    const-string/jumbo v0, "updateCall"

    return-object v0

    :pswitch_20  #0x2
    const-string v0, "initializeDiagnosticCall"

    return-object v0

    :pswitch_23  #0x1
    const-string/jumbo v0, "setAdapter"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23  #00000001
        :pswitch_20  #00000002
        :pswitch_1c  #00000003
        :pswitch_18  #00000004
        :pswitch_14  #00000005
        :pswitch_10  #00000006
        :pswitch_d  #00000007
        :pswitch_9  #00000008
        :pswitch_5  #00000009
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.android.internal.telecom.ICallDiagnosticService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_ae

    packed-switch p1, :pswitch_data_b4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/telecom/DisconnectCause;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/DisconnectCause;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->notifyCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V

    goto/16 :goto_ac

    :pswitch_30  #0x8
    sget-object v2, Landroid/telecom/BluetoothCallQualityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/BluetoothCallQualityReport;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->receiveBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V

    goto :goto_ac

    :pswitch_3f  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/telephony/CallQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CallQuality;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->callQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V

    goto :goto_ac

    :pswitch_52  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->receiveDeviceToDeviceMessage(Ljava/lang/String;II)V

    goto :goto_ac

    :pswitch_65  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->removeDiagnosticCall(Ljava/lang/String;)V

    goto :goto_ac

    :pswitch_70  #0x4
    sget-object v2, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallAudioState;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->updateCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_ac

    :pswitch_7f  #0x3
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_ac

    :pswitch_8e  #0x2
    sget-object v2, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/ParcelableCall;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->initializeDiagnosticCall(Landroid/telecom/ParcelableCall;)V

    goto :goto_ac

    :pswitch_9d  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/ICallDiagnosticService$Stub;->setAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V

    nop

    :goto_ac
    return v1

    nop

    :pswitch_data_ae
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_b4
    .packed-switch 0x1
        :pswitch_9d  #00000001
        :pswitch_8e  #00000002
        :pswitch_7f  #00000003
        :pswitch_70  #00000004
        :pswitch_65  #00000005
        :pswitch_52  #00000006
        :pswitch_3f  #00000007
        :pswitch_30  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
.end method
