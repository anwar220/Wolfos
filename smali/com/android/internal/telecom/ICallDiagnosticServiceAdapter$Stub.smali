# classes4.dex

.class public abstract Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearDiagnosticMessage:I = 0x2

.field static final TRANSACTION_displayDiagnosticMessage:I = 0x1

.field static final TRANSACTION_overrideDisconnectMessage:I = 0x4

.field static final TRANSACTION_sendDeviceToDeviceMessage:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telecom.ICallDiagnosticServiceAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.telecom.ICallDiagnosticServiceAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x4
    const-string/jumbo v0, "overrideDisconnectMessage"

    return-object v0

    :pswitch_9  #0x3
    const-string/jumbo v0, "sendDeviceToDeviceMessage"

    return-object v0

    :pswitch_d  #0x2
    const-string v0, "clearDiagnosticMessage"

    return-object v0

    :pswitch_10  #0x1
    const-string v0, "displayDiagnosticMessage"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_10  #00000001
        :pswitch_d  #00000002
        :pswitch_9  #00000003
        :pswitch_5  #00000004
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "com.android.internal.telecom.ICallDiagnosticServiceAdapter"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_6a

    packed-switch p1, :pswitch_data_70

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->overrideDisconnectMessage(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_68

    :pswitch_2f  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->sendDeviceToDeviceMessage(Ljava/lang/String;II)V

    goto :goto_68

    :pswitch_42  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->clearDiagnosticMessage(Ljava/lang/String;I)V

    goto :goto_68

    :pswitch_51  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter$Stub;->displayDiagnosticMessage(Ljava/lang/String;ILjava/lang/CharSequence;)V

    nop

    :goto_68
    return v1

    nop

    :pswitch_data_6a
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_51  #00000001
        :pswitch_42  #00000002
        :pswitch_2f  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method
