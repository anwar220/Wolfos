# classes2.dex

.class public abstract Landroid/view/contentcapture/IContentCaptureManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/view/contentcapture/IContentCaptureManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/IContentCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/IContentCaptureManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_finishSession:I = 0x2

.field static final TRANSACTION_getContentCaptureConditions:I = 0x8

.field static final TRANSACTION_getServiceComponentName:I = 0x3

.field static final TRANSACTION_getServiceSettingsActivity:I = 0x7

.field static final TRANSACTION_isContentCaptureFeatureEnabled:I = 0x6

.field static final TRANSACTION_registerContentCaptureOptionsCallback:I = 0xc

.field static final TRANSACTION_removeData:I = 0x4

.field static final TRANSACTION_resetTemporaryService:I = 0x9

.field static final TRANSACTION_setDefaultServiceEnabled:I = 0xb

.field static final TRANSACTION_setTemporaryService:I = 0xa

.field static final TRANSACTION_shareData:I = 0x5

.field static final TRANSACTION_startSession:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.view.contentcapture.IContentCaptureManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.view.contentcapture.IContentCaptureManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/contentcapture/IContentCaptureManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/view/contentcapture/IContentCaptureManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/view/contentcapture/IContentCaptureManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/contentcapture/IContentCaptureManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2a

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xc
    const-string v0, "registerContentCaptureOptionsCallback"

    return-object v0

    :pswitch_8  #0xb
    const-string v0, "setDefaultServiceEnabled"

    return-object v0

    :pswitch_b  #0xa
    const-string v0, "setTemporaryService"

    return-object v0

    :pswitch_e  #0x9
    const-string v0, "resetTemporaryService"

    return-object v0

    :pswitch_11  #0x8
    const-string v0, "getContentCaptureConditions"

    return-object v0

    :pswitch_14  #0x7
    const-string v0, "getServiceSettingsActivity"

    return-object v0

    :pswitch_17  #0x6
    const-string v0, "isContentCaptureFeatureEnabled"

    return-object v0

    :pswitch_1a  #0x5
    const-string v0, "shareData"

    return-object v0

    :pswitch_1d  #0x4
    const-string v0, "removeData"

    return-object v0

    :pswitch_20  #0x3
    const-string v0, "getServiceComponentName"

    return-object v0

    :pswitch_23  #0x2
    const-string v0, "finishSession"

    return-object v0

    :pswitch_26  #0x1
    const-string v0, "startSession"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26  #00000001
        :pswitch_23  #00000002
        :pswitch_20  #00000003
        :pswitch_1d  #00000004
        :pswitch_1a  #00000005
        :pswitch_17  #00000006
        :pswitch_14  #00000007
        :pswitch_11  #00000008
        :pswitch_e  #00000009
        :pswitch_b  #0000000a
        :pswitch_8  #0000000b
        :pswitch_5  #0000000c
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0xb

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, "android.view.contentcapture.IContentCaptureManager"

    const/4 v11, 0x1

    if-lt v8, v11, :cond_13

    const v0, 0xffffff

    if-gt v8, v0, :cond_13

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_13
    packed-switch v8, :pswitch_data_112

    move-object/from16 v12, p3

    packed-switch v8, :pswitch_data_118

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_20  #0x5f4e5446
    move-object/from16 v12, p3

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_26  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IContentCaptureOptionsCallback;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->registerContentCaptureOptionsCallback(Ljava/lang/String;Landroid/view/contentcapture/IContentCaptureOptionsCallback;)V

    goto/16 :goto_111

    :pswitch_3a  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->setDefaultServiceEnabled(IZ)V

    goto/16 :goto_111

    :pswitch_4a  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->setTemporaryService(ILjava/lang/String;I)V

    goto/16 :goto_111

    :pswitch_5e  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->resetTemporaryService(I)V

    goto/16 :goto_111

    :pswitch_6a  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getContentCaptureConditions(Ljava/lang/String;Lcom/android/internal/os/IResultReceiver;)V

    goto/16 :goto_111

    :pswitch_7e  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getServiceSettingsActivity(Lcom/android/internal/os/IResultReceiver;)V

    goto/16 :goto_111

    :pswitch_8e  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->isContentCaptureFeatureEnabled(Lcom/android/internal/os/IResultReceiver;)V

    goto/16 :goto_111

    :pswitch_9e  #0x5
    sget-object v0, Landroid/view/contentcapture/DataShareRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/DataShareRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/contentcapture/IDataShareWriteAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/contentcapture/IDataShareWriteAdapter;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->shareData(Landroid/view/contentcapture/DataShareRequest;Landroid/view/contentcapture/IDataShareWriteAdapter;)V

    goto :goto_111

    :pswitch_b5  #0x4
    sget-object v0, Landroid/view/contentcapture/DataRemovalRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/contentcapture/DataRemovalRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->removeData(Landroid/view/contentcapture/DataRemovalRequest;)V

    goto :goto_111

    :pswitch_c4  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->getServiceComponentName(Lcom/android/internal/os/IResultReceiver;)V

    goto :goto_111

    :pswitch_d3  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->finishSession(I)V

    goto :goto_111

    :pswitch_de  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/ComponentName;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/view/contentcapture/IContentCaptureManager$Stub;->startSession(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/ComponentName;IILcom/android/internal/os/IResultReceiver;)V

    nop

    :goto_111
    return v11

    :pswitch_data_112
    .packed-switch 0x5f4e5446
        :pswitch_20  #5f4e5446
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_de  #00000001
        :pswitch_d3  #00000002
        :pswitch_c4  #00000003
        :pswitch_b5  #00000004
        :pswitch_9e  #00000005
        :pswitch_8e  #00000006
        :pswitch_7e  #00000007
        :pswitch_6a  #00000008
        :pswitch_5e  #00000009
        :pswitch_4a  #0000000a
        :pswitch_3a  #0000000b
        :pswitch_26  #0000000c
    .end packed-switch
.end method
