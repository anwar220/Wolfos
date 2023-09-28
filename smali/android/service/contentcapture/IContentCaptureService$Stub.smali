# classes3.dex

.class public abstract Landroid/service/contentcapture/IContentCaptureService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/service/contentcapture/IContentCaptureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/contentcapture/IContentCaptureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onActivityEvent:I = 0x8

.field static final TRANSACTION_onActivitySnapshot:I = 0x5

.field static final TRANSACTION_onConnected:I = 0x1

.field static final TRANSACTION_onDataRemovalRequest:I = 0x6

.field static final TRANSACTION_onDataShared:I = 0x7

.field static final TRANSACTION_onDisconnected:I = 0x2

.field static final TRANSACTION_onSessionFinished:I = 0x4

.field static final TRANSACTION_onSessionStarted:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.service.contentcapture.IContentCaptureService"

    invoke-virtual {p0, p0, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IContentCaptureService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.service.contentcapture.IContentCaptureService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/contentcapture/IContentCaptureService;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/service/contentcapture/IContentCaptureService;

    return-object v1

    :cond_14
    new-instance v1, Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/contentcapture/IContentCaptureService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_26

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x8
    const-string/jumbo v0, "onActivityEvent"

    return-object v0

    :pswitch_9  #0x7
    const-string/jumbo v0, "onDataShared"

    return-object v0

    :pswitch_d  #0x6
    const-string/jumbo v0, "onDataRemovalRequest"

    return-object v0

    :pswitch_11  #0x5
    const-string/jumbo v0, "onActivitySnapshot"

    return-object v0

    :pswitch_15  #0x4
    const-string/jumbo v0, "onSessionFinished"

    return-object v0

    :pswitch_19  #0x3
    const-string/jumbo v0, "onSessionStarted"

    return-object v0

    :pswitch_1d  #0x2
    const-string/jumbo v0, "onDisconnected"

    return-object v0

    :pswitch_21  #0x1
    const-string/jumbo v0, "onConnected"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21  #00000001
        :pswitch_1d  #00000002
        :pswitch_19  #00000003
        :pswitch_15  #00000004
        :pswitch_11  #00000005
        :pswitch_d  #00000006
        :pswitch_9  #00000007
        :pswitch_5  #00000008
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "android.service.contentcapture.IContentCaptureService"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_13

    const v0, 0xffffff

    if-gt v7, v0, :cond_13

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_13
    packed-switch v7, :pswitch_data_c0

    move-object/from16 v11, p3

    packed-switch v7, :pswitch_data_c6

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :pswitch_26  #0x8
    sget-object v0, Landroid/service/contentcapture/ActivityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/contentcapture/ActivityEvent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onActivityEvent(Landroid/service/contentcapture/ActivityEvent;)V

    goto/16 :goto_be

    :pswitch_36  #0x7
    sget-object v0, Landroid/view/contentcapture/DataShareRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/DataShareRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/contentcapture/IDataShareCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentcapture/IDataShareCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDataShared(Landroid/view/contentcapture/DataShareRequest;Landroid/service/contentcapture/IDataShareCallback;)V

    goto/16 :goto_be

    :pswitch_4e  #0x6
    sget-object v0, Landroid/view/contentcapture/DataRemovalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/DataRemovalRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDataRemovalRequest(Landroid/view/contentcapture/DataRemovalRequest;)V

    goto :goto_be

    :pswitch_5d  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Landroid/service/contentcapture/SnapshotData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/contentcapture/SnapshotData;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onActivitySnapshot(ILandroid/service/contentcapture/SnapshotData;)V

    goto :goto_be

    :pswitch_70  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onSessionFinished(I)V

    goto :goto_be

    :pswitch_7b  #0x3
    sget-object v0, Landroid/view/contentcapture/ContentCaptureContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/view/contentcapture/ContentCaptureContext;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onSessionStarted(Landroid/view/contentcapture/ContentCaptureContext;IILcom/android/internal/os/IResultReceiver;I)V

    goto :goto_be

    :pswitch_a7  #0x2
    invoke-virtual/range {p0 .. p0}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onDisconnected()V

    goto :goto_be

    :pswitch_ab  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1, v2}, Landroid/service/contentcapture/IContentCaptureService$Stub;->onConnected(Landroid/os/IBinder;ZZ)V

    nop

    :goto_be
    return v10

    nop

    :pswitch_data_c0
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_ab  #00000001
        :pswitch_a7  #00000002
        :pswitch_7b  #00000003
        :pswitch_70  #00000004
        :pswitch_5d  #00000005
        :pswitch_4e  #00000006
        :pswitch_36  #00000007
        :pswitch_26  #00000008
    .end packed-switch
.end method
