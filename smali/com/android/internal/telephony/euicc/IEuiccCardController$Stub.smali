# classes4.dex

.class public abstract Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccCardController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccCardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_authenticateServer:I = 0x10

.field static final TRANSACTION_cancelSession:I = 0x13

.field static final TRANSACTION_deleteProfile:I = 0x7

.field static final TRANSACTION_disableProfile:I = 0x4

.field static final TRANSACTION_getAllProfiles:I = 0x1

.field static final TRANSACTION_getDefaultSmdpAddress:I = 0x9

.field static final TRANSACTION_getEnabledProfile:I = 0x3

.field static final TRANSACTION_getEuiccChallenge:I = 0xd

.field static final TRANSACTION_getEuiccInfo1:I = 0xe

.field static final TRANSACTION_getEuiccInfo2:I = 0xf

.field static final TRANSACTION_getProfile:I = 0x2

.field static final TRANSACTION_getRulesAuthTable:I = 0xc

.field static final TRANSACTION_getSmdsAddress:I = 0xa

.field static final TRANSACTION_listNotifications:I = 0x14

.field static final TRANSACTION_loadBoundProfilePackage:I = 0x12

.field static final TRANSACTION_prepareDownload:I = 0x11

.field static final TRANSACTION_removeNotificationFromList:I = 0x17

.field static final TRANSACTION_resetMemory:I = 0x8

.field static final TRANSACTION_retrieveNotification:I = 0x16

.field static final TRANSACTION_retrieveNotificationList:I = 0x15

.field static final TRANSACTION_setDefaultSmdpAddress:I = 0xb

.field static final TRANSACTION_setNickname:I = 0x6

.field static final TRANSACTION_switchToProfile:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccCardController;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "com.android.internal.telephony.euicc.IEuiccCardController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccCardController;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/euicc/IEuiccCardController;

    return-object v1

    :cond_14
    new-instance v1, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_54

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x17
    const-string/jumbo v0, "removeNotificationFromList"

    return-object v0

    :pswitch_9  #0x16
    const-string/jumbo v0, "retrieveNotification"

    return-object v0

    :pswitch_d  #0x15
    const-string/jumbo v0, "retrieveNotificationList"

    return-object v0

    :pswitch_11  #0x14
    const-string/jumbo v0, "listNotifications"

    return-object v0

    :pswitch_15  #0x13
    const-string v0, "cancelSession"

    return-object v0

    :pswitch_18  #0x12
    const-string/jumbo v0, "loadBoundProfilePackage"

    return-object v0

    :pswitch_1c  #0x11
    const-string/jumbo v0, "prepareDownload"

    return-object v0

    :pswitch_20  #0x10
    const-string v0, "authenticateServer"

    return-object v0

    :pswitch_23  #0xf
    const-string v0, "getEuiccInfo2"

    return-object v0

    :pswitch_26  #0xe
    const-string v0, "getEuiccInfo1"

    return-object v0

    :pswitch_29  #0xd
    const-string v0, "getEuiccChallenge"

    return-object v0

    :pswitch_2c  #0xc
    const-string v0, "getRulesAuthTable"

    return-object v0

    :pswitch_2f  #0xb
    const-string/jumbo v0, "setDefaultSmdpAddress"

    return-object v0

    :pswitch_33  #0xa
    const-string v0, "getSmdsAddress"

    return-object v0

    :pswitch_36  #0x9
    const-string v0, "getDefaultSmdpAddress"

    return-object v0

    :pswitch_39  #0x8
    const-string/jumbo v0, "resetMemory"

    return-object v0

    :pswitch_3d  #0x7
    const-string v0, "deleteProfile"

    return-object v0

    :pswitch_40  #0x6
    const-string/jumbo v0, "setNickname"

    return-object v0

    :pswitch_44  #0x5
    const-string/jumbo v0, "switchToProfile"

    return-object v0

    :pswitch_48  #0x4
    const-string v0, "disableProfile"

    return-object v0

    :pswitch_4b  #0x3
    const-string v0, "getEnabledProfile"

    return-object v0

    :pswitch_4e  #0x2
    const-string v0, "getProfile"

    return-object v0

    :pswitch_51  #0x1
    const-string v0, "getAllProfiles"

    return-object v0

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_51  #00000001
        :pswitch_4e  #00000002
        :pswitch_4b  #00000003
        :pswitch_48  #00000004
        :pswitch_44  #00000005
        :pswitch_40  #00000006
        :pswitch_3d  #00000007
        :pswitch_39  #00000008
        :pswitch_36  #00000009
        :pswitch_33  #0000000a
        :pswitch_2f  #0000000b
        :pswitch_2c  #0000000c
        :pswitch_29  #0000000d
        :pswitch_26  #0000000e
        :pswitch_23  #0000000f
        :pswitch_20  #00000010
        :pswitch_1c  #00000011
        :pswitch_18  #00000012
        :pswitch_15  #00000013
        :pswitch_11  #00000014
        :pswitch_d  #00000015
        :pswitch_9  #00000016
        :pswitch_5  #00000017
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x16

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v9, p0

    move/from16 v10, p1

    const-string v11, "com.android.internal.telephony.euicc.IEuiccCardController"

    const/4 v12, 0x1

    if-lt v10, v12, :cond_14

    const v0, 0xffffff

    if-gt v10, v0, :cond_14

    move-object/from16 v13, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_16

    :cond_14
    move-object/from16 v13, p2

    :goto_16
    packed-switch v10, :pswitch_data_300

    move-object/from16 v14, p3

    packed-switch v10, :pswitch_data_306

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_23  #0x5f4e5446
    move-object/from16 v14, p3

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :pswitch_29  #0x17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->removeNotificationFromList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRemoveNotificationFromListCallback;)V

    goto/16 :goto_2ff

    :pswitch_45  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->retrieveNotification(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationCallback;)V

    goto/16 :goto_2ff

    :pswitch_61  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->retrieveNotificationList(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IRetrieveNotificationListCallback;)V

    goto/16 :goto_2ff

    :pswitch_7d  #0x14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IListNotificationsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IListNotificationsCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->listNotifications(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IListNotificationsCallback;)V

    goto/16 :goto_2ff

    :pswitch_99  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/ICancelSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ICancelSessionCallback;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->cancelSession(Ljava/lang/String;Ljava/lang/String;[BILcom/android/internal/telephony/euicc/ICancelSessionCallback;)V

    goto/16 :goto_2ff

    :pswitch_c1  #0x12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->loadBoundProfilePackage(Ljava/lang/String;Ljava/lang/String;[BLcom/android/internal/telephony/euicc/ILoadBoundProfilePackageCallback;)V

    goto/16 :goto_2ff

    :pswitch_dd  #0x11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IPrepareDownloadCallback;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->prepareDownload(Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IPrepareDownloadCallback;)V

    goto/16 :goto_2ff

    :pswitch_113  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IAuthenticateServerCallback;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->authenticateServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/euicc/IAuthenticateServerCallback;)V

    goto/16 :goto_2ff

    :pswitch_150  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccInfo2(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo2Callback;)V

    goto/16 :goto_2ff

    :pswitch_168  #0xe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccInfo1(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccInfo1Callback;)V

    goto/16 :goto_2ff

    :pswitch_180  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEuiccChallenge(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetEuiccChallengeCallback;)V

    goto/16 :goto_2ff

    :pswitch_198  #0xc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getRulesAuthTable(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetRulesAuthTableCallback;)V

    goto/16 :goto_2ff

    :pswitch_1b0  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->setDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetDefaultSmdpAddressCallback;)V

    goto/16 :goto_2ff

    :pswitch_1cc  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getSmdsAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetSmdsAddressCallback;)V

    goto/16 :goto_2ff

    :pswitch_1e4  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getDefaultSmdpAddress(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetDefaultSmdpAddressCallback;)V

    goto/16 :goto_2ff

    :pswitch_1fc  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IResetMemoryCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IResetMemoryCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->resetMemory(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IResetMemoryCallback;)V

    goto/16 :goto_2ff

    :pswitch_218  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IDeleteProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->deleteProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IDeleteProfileCallback;)V

    goto/16 :goto_2ff

    :pswitch_234  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/ISetNicknameCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISetNicknameCallback;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->setNickname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/ISetNicknameCallback;)V

    goto/16 :goto_2ff

    :pswitch_25c  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/ISwitchToProfileCallback;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->switchToProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/internal/telephony/euicc/ISwitchToProfileCallback;)V

    goto/16 :goto_2ff

    :pswitch_28b  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/euicc/IDisableProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IDisableProfileCallback;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->disableProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/euicc/IDisableProfileCallback;)V

    goto :goto_2ff

    :pswitch_2b2  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetProfileCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getEnabledProfile(Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    goto :goto_2ff

    :pswitch_2cd  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/euicc/IGetProfileCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetProfileCallback;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetProfileCallback;)V

    goto :goto_2ff

    :pswitch_2e8  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccCardController$Stub;->getAllProfiles(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/IGetAllProfilesCallback;)V

    nop

    :goto_2ff
    return v12

    :pswitch_data_300
    .packed-switch 0x5f4e5446
        :pswitch_23  #5f4e5446
    .end packed-switch

    :pswitch_data_306
    .packed-switch 0x1
        :pswitch_2e8  #00000001
        :pswitch_2cd  #00000002
        :pswitch_2b2  #00000003
        :pswitch_28b  #00000004
        :pswitch_25c  #00000005
        :pswitch_234  #00000006
        :pswitch_218  #00000007
        :pswitch_1fc  #00000008
        :pswitch_1e4  #00000009
        :pswitch_1cc  #0000000a
        :pswitch_1b0  #0000000b
        :pswitch_198  #0000000c
        :pswitch_180  #0000000d
        :pswitch_168  #0000000e
        :pswitch_150  #0000000f
        :pswitch_113  #00000010
        :pswitch_dd  #00000011
        :pswitch_c1  #00000012
        :pswitch_99  #00000013
        :pswitch_7d  #00000014
        :pswitch_61  #00000015
        :pswitch_45  #00000016
        :pswitch_29  #00000017
    .end packed-switch
.end method
