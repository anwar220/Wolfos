# classes.dex

.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final TRANSACTION_attachAgent:I = 0x31

.field static final TRANSACTION_attachStartupAgents:I = 0x32

.field static final TRANSACTION_bindApplication:I = 0x4

.field static final TRANSACTION_clearDnsCache:I = 0x1a

.field static final TRANSACTION_dispatchPackageBroadcast:I = 0x15

.field static final TRANSACTION_dumpActivity:I = 0x18

.field static final TRANSACTION_dumpBinderAllocations:I = 0x3c

.field static final TRANSACTION_dumpCacheInfo:I = 0x22

.field static final TRANSACTION_dumpDbInfo:I = 0x24

.field static final TRANSACTION_dumpGfxInfo:I = 0x21

.field static final TRANSACTION_dumpHeap:I = 0x17

.field static final TRANSACTION_dumpLogText:I = 0x3e

.field static final TRANSACTION_dumpMemInfo:I = 0x1f

.field static final TRANSACTION_dumpMemInfoProto:I = 0x20

.field static final TRANSACTION_dumpPeriodHistoryMessage:I = 0x3b

.field static final TRANSACTION_dumpProvider:I = 0x23

.field static final TRANSACTION_dumpResources:I = 0x19

.field static final TRANSACTION_dumpService:I = 0xc

.field static final TRANSACTION_enableDebugConfig:I = 0x3f

.field static final TRANSACTION_handleTrustStorageUpdate:I = 0x30

.field static final TRANSACTION_instrumentWithoutRestart:I = 0x39

.field static final TRANSACTION_notifyCleartextNetwork:I = 0x2c

.field static final TRANSACTION_notifyContentProviderPublishStatus:I = 0x38

.field static final TRANSACTION_performDirectAction:I = 0x37

.field static final TRANSACTION_processInBackground:I = 0x9

.field static final TRANSACTION_profilerControl:I = 0xf

.field static final TRANSACTION_requestAssistContextExtras:I = 0x26

.field static final TRANSACTION_requestDirectActions:I = 0x36

.field static final TRANSACTION_runIsolatedEntryPoint:I = 0x5

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x33

.field static final TRANSACTION_scheduleBindService:I = 0xa

.field static final TRANSACTION_scheduleCrash:I = 0x16

.field static final TRANSACTION_scheduleCreateBackupAgent:I = 0x11

.field static final TRANSACTION_scheduleCreateService:I = 0x2

.field static final TRANSACTION_scheduleDestroyBackupAgent:I = 0x12

.field static final TRANSACTION_scheduleEnterAnimationComplete:I = 0x2b

.field static final TRANSACTION_scheduleExit:I = 0x6

.field static final TRANSACTION_scheduleInstallProvider:I = 0x29

.field static final TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x2f

.field static final TRANSACTION_scheduleLowMemory:I = 0xe

.field static final TRANSACTION_scheduleOnNewActivityOptions:I = 0x13

.field static final TRANSACTION_scheduleReceiver:I = 0x1

.field static final TRANSACTION_scheduleRegisteredReceiver:I = 0xd

.field static final TRANSACTION_scheduleServiceArgs:I = 0x7

.field static final TRANSACTION_scheduleStopService:I = 0x3

.field static final TRANSACTION_scheduleSuicide:I = 0x14

.field static final TRANSACTION_scheduleTransaction:I = 0x35

.field static final TRANSACTION_scheduleTranslucentConversionComplete:I = 0x27

.field static final TRANSACTION_scheduleTrimMemory:I = 0x1e

.field static final TRANSACTION_scheduleUnbindService:I = 0xb

.field static final TRANSACTION_setCoreSettings:I = 0x1c

.field static final TRANSACTION_setNetworkBlockSeq:I = 0x34

.field static final TRANSACTION_setProcessState:I = 0x28

.field static final TRANSACTION_setSchedulingGroup:I = 0x10

.field static final TRANSACTION_startBinderTracking:I = 0x2d

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0x2e

.field static final TRANSACTION_trackBinderAllocations:I = 0x3d

.field static final TRANSACTION_unstableProviderDied:I = 0x25

.field static final TRANSACTION_updateHttpProxy:I = 0x1b

.field static final TRANSACTION_updatePackageCompatibilityInfo:I = 0x1d

.field static final TRANSACTION_updateTimePrefs:I = 0x2a

.field static final TRANSACTION_updateTimeZone:I = 0x8

.field static final TRANSACTION_updateUiTranslationState:I = 0x3a


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.app.IApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/app/IApplicationThread;

    return-object v1

    :cond_14
    new-instance v1, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_ec

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0x3f
    const-string v0, "enableDebugConfig"

    return-object v0

    :pswitch_8  #0x3e
    const-string v0, "dumpLogText"

    return-object v0

    :pswitch_b  #0x3d
    const-string/jumbo v0, "trackBinderAllocations"

    return-object v0

    :pswitch_f  #0x3c
    const-string v0, "dumpBinderAllocations"

    return-object v0

    :pswitch_12  #0x3b
    const-string v0, "dumpPeriodHistoryMessage"

    return-object v0

    :pswitch_15  #0x3a
    const-string/jumbo v0, "updateUiTranslationState"

    return-object v0

    :pswitch_19  #0x39
    const-string v0, "instrumentWithoutRestart"

    return-object v0

    :pswitch_1c  #0x38
    const-string/jumbo v0, "notifyContentProviderPublishStatus"

    return-object v0

    :pswitch_20  #0x37
    const-string/jumbo v0, "performDirectAction"

    return-object v0

    :pswitch_24  #0x36
    const-string/jumbo v0, "requestDirectActions"

    return-object v0

    :pswitch_28  #0x35
    const-string/jumbo v0, "scheduleTransaction"

    return-object v0

    :pswitch_2c  #0x34
    const-string/jumbo v0, "setNetworkBlockSeq"

    return-object v0

    :pswitch_30  #0x33
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    :pswitch_34  #0x32
    const-string v0, "attachStartupAgents"

    return-object v0

    :pswitch_37  #0x31
    const-string v0, "attachAgent"

    return-object v0

    :pswitch_3a  #0x30
    const-string v0, "handleTrustStorageUpdate"

    return-object v0

    :pswitch_3d  #0x2f
    const-string/jumbo v0, "scheduleLocalVoiceInteractionStarted"

    return-object v0

    :pswitch_41  #0x2e
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    :pswitch_45  #0x2d
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    :pswitch_49  #0x2c
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    :pswitch_4d  #0x2b
    const-string/jumbo v0, "scheduleEnterAnimationComplete"

    return-object v0

    :pswitch_51  #0x2a
    const-string/jumbo v0, "updateTimePrefs"

    return-object v0

    :pswitch_55  #0x29
    const-string/jumbo v0, "scheduleInstallProvider"

    return-object v0

    :pswitch_59  #0x28
    const-string/jumbo v0, "setProcessState"

    return-object v0

    :pswitch_5d  #0x27
    const-string/jumbo v0, "scheduleTranslucentConversionComplete"

    return-object v0

    :pswitch_61  #0x26
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    :pswitch_65  #0x25
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    :pswitch_69  #0x24
    const-string v0, "dumpDbInfo"

    return-object v0

    :pswitch_6c  #0x23
    const-string v0, "dumpProvider"

    return-object v0

    :pswitch_6f  #0x22
    const-string v0, "dumpCacheInfo"

    return-object v0

    :pswitch_72  #0x21
    const-string v0, "dumpGfxInfo"

    return-object v0

    :pswitch_75  #0x20
    const-string v0, "dumpMemInfoProto"

    return-object v0

    :pswitch_78  #0x1f
    const-string v0, "dumpMemInfo"

    return-object v0

    :pswitch_7b  #0x1e
    const-string/jumbo v0, "scheduleTrimMemory"

    return-object v0

    :pswitch_7f  #0x1d
    const-string/jumbo v0, "updatePackageCompatibilityInfo"

    return-object v0

    :pswitch_83  #0x1c
    const-string/jumbo v0, "setCoreSettings"

    return-object v0

    :pswitch_87  #0x1b
    const-string/jumbo v0, "updateHttpProxy"

    return-object v0

    :pswitch_8b  #0x1a
    const-string v0, "clearDnsCache"

    return-object v0

    :pswitch_8e  #0x19
    const-string v0, "dumpResources"

    return-object v0

    :pswitch_91  #0x18
    const-string v0, "dumpActivity"

    return-object v0

    :pswitch_94  #0x17
    const-string v0, "dumpHeap"

    return-object v0

    :pswitch_97  #0x16
    const-string/jumbo v0, "scheduleCrash"

    return-object v0

    :pswitch_9b  #0x15
    const-string v0, "dispatchPackageBroadcast"

    return-object v0

    :pswitch_9e  #0x14
    const-string/jumbo v0, "scheduleSuicide"

    return-object v0

    :pswitch_a2  #0x13
    const-string/jumbo v0, "scheduleOnNewActivityOptions"

    return-object v0

    :pswitch_a6  #0x12
    const-string/jumbo v0, "scheduleDestroyBackupAgent"

    return-object v0

    :pswitch_aa  #0x11
    const-string/jumbo v0, "scheduleCreateBackupAgent"

    return-object v0

    :pswitch_ae  #0x10
    const-string/jumbo v0, "setSchedulingGroup"

    return-object v0

    :pswitch_b2  #0xf
    const-string/jumbo v0, "profilerControl"

    return-object v0

    :pswitch_b6  #0xe
    const-string/jumbo v0, "scheduleLowMemory"

    return-object v0

    :pswitch_ba  #0xd
    const-string/jumbo v0, "scheduleRegisteredReceiver"

    return-object v0

    :pswitch_be  #0xc
    const-string v0, "dumpService"

    return-object v0

    :pswitch_c1  #0xb
    const-string/jumbo v0, "scheduleUnbindService"

    return-object v0

    :pswitch_c5  #0xa
    const-string/jumbo v0, "scheduleBindService"

    return-object v0

    :pswitch_c9  #0x9
    const-string/jumbo v0, "processInBackground"

    return-object v0

    :pswitch_cd  #0x8
    const-string/jumbo v0, "updateTimeZone"

    return-object v0

    :pswitch_d1  #0x7
    const-string/jumbo v0, "scheduleServiceArgs"

    return-object v0

    :pswitch_d5  #0x6
    const-string/jumbo v0, "scheduleExit"

    return-object v0

    :pswitch_d9  #0x5
    const-string/jumbo v0, "runIsolatedEntryPoint"

    return-object v0

    :pswitch_dd  #0x4
    const-string v0, "bindApplication"

    return-object v0

    :pswitch_e0  #0x3
    const-string/jumbo v0, "scheduleStopService"

    return-object v0

    :pswitch_e4  #0x2
    const-string/jumbo v0, "scheduleCreateService"

    return-object v0

    :pswitch_e8  #0x1
    const-string/jumbo v0, "scheduleReceiver"

    return-object v0

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_e8  #00000001
        :pswitch_e4  #00000002
        :pswitch_e0  #00000003
        :pswitch_dd  #00000004
        :pswitch_d9  #00000005
        :pswitch_d5  #00000006
        :pswitch_d1  #00000007
        :pswitch_cd  #00000008
        :pswitch_c9  #00000009
        :pswitch_c5  #0000000a
        :pswitch_c1  #0000000b
        :pswitch_be  #0000000c
        :pswitch_ba  #0000000d
        :pswitch_b6  #0000000e
        :pswitch_b2  #0000000f
        :pswitch_ae  #00000010
        :pswitch_aa  #00000011
        :pswitch_a6  #00000012
        :pswitch_a2  #00000013
        :pswitch_9e  #00000014
        :pswitch_9b  #00000015
        :pswitch_97  #00000016
        :pswitch_94  #00000017
        :pswitch_91  #00000018
        :pswitch_8e  #00000019
        :pswitch_8b  #0000001a
        :pswitch_87  #0000001b
        :pswitch_83  #0000001c
        :pswitch_7f  #0000001d
        :pswitch_7b  #0000001e
        :pswitch_78  #0000001f
        :pswitch_75  #00000020
        :pswitch_72  #00000021
        :pswitch_6f  #00000022
        :pswitch_6c  #00000023
        :pswitch_69  #00000024
        :pswitch_65  #00000025
        :pswitch_61  #00000026
        :pswitch_5d  #00000027
        :pswitch_59  #00000028
        :pswitch_55  #00000029
        :pswitch_51  #0000002a
        :pswitch_4d  #0000002b
        :pswitch_49  #0000002c
        :pswitch_45  #0000002d
        :pswitch_41  #0000002e
        :pswitch_3d  #0000002f
        :pswitch_3a  #00000030
        :pswitch_37  #00000031
        :pswitch_34  #00000032
        :pswitch_30  #00000033
        :pswitch_2c  #00000034
        :pswitch_28  #00000035
        :pswitch_24  #00000036
        :pswitch_20  #00000037
        :pswitch_1c  #00000038
        :pswitch_19  #00000039
        :pswitch_15  #0000003a
        :pswitch_12  #0000003b
        :pswitch_f  #0000003c
        :pswitch_b  #0000003d
        :pswitch_8  #0000003e
        :pswitch_5  #0000003f
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x3e

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 66
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    const-string v12, "android.app.IApplicationThread"

    const/4 v11, 0x1

    if-lt v14, v11, :cond_13

    const v0, 0xffffff

    if-gt v14, v0, :cond_13

    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_13
    packed-switch v14, :pswitch_data_84a

    move-object/from16 v10, p3

    packed-switch v14, :pswitch_data_850

    move-object v11, v13

    move-object v10, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_22  #0x5f4e5446
    move-object/from16 v10, p3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_28  #0x3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->enableDebugConfig(Ljava/lang/String;Z)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_3e  #0x3e
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->dumpLogText(Landroid/os/ParcelFileDescriptor;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_54  #0x3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->trackBinderAllocations(Z)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_66  #0x3c
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->dumpBinderAllocations(Landroid/os/ParcelFileDescriptor;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_7c  #0x3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpPeriodHistoryMessage(JI)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_92  #0x3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/translation/TranslationSpec;

    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/translation/TranslationSpec;

    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    sget-object v0, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/translation/UiTranslationSpec;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_d6  #0x39
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v9

    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_118  #0x38
    sget-object v0, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContentProviderHolder;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_13a  #0x37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/RemoteCallback;

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/RemoteCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_174  #0x36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v1

    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_19e  #0x35
    sget-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_1b4  #0x34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_1c6  #0x33
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_1dc  #0x32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->attachStartupAgents(Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_1ee  #0x31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_200  #0x30
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_20b  #0x2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_225  #0x2e
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_23b  #0x2d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_246  #0x2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_258  #0x2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_26a  #0x2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_27c  #0x29
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_292  #0x28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_2a4  #0x27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_2ba  #0x26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_2e4  #0x25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_2f6  #0x24
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_310  #0x23
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_32e  #0x22
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_348  #0x21
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_362  #0x20
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Debug$MemoryInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_3a4  #0x1f
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Debug$MemoryInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_3ee  #0x1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_400  #0x1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_41a  #0x1c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_430  #0x1b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateHttpProxy()V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_43b  #0x1a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_446  #0x19
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_464  #0x18
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_486  #0x17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/RemoteCallback;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_4c3  #0x16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_4e1  #0x15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_4f7  #0x14
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_502  #0x13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_51c  #0x12
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_53e  #0x11
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/res/CompatibilityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;III)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_572  #0x10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_584  #0xf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfilerInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_5a2  #0xe
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_5ad  #0xd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v16

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_603  #0xc
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_621  #0xb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_63b  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_65d  #0x9
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_668  #0x8
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_673  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_68d  #0x6
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_698  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_848

    :pswitch_6ae  #0x4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v1, v29

    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v2, v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v3, v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v4, v32

    sget-object v0, Landroid/content/pm/ProviderInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Landroid/content/pm/ProviderInfoList;

    move-object/from16 v5, v33

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Landroid/content/ComponentName;

    move-object/from16 v6, v34

    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Landroid/app/ProfilerInfo;

    move-object/from16 v7, v35

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Landroid/os/Bundle;

    move-object/from16 v8, v36

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v37

    move-object/from16 v9, v37

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v38

    move-object/from16 v10, v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    move/from16 v40, v11

    move/from16 v11, v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v41

    move-object/from16 v42, v12

    move/from16 v12, v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v43

    move-object v0, v13

    move/from16 v13, v43

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v44

    move/from16 v14, v44

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v45

    move/from16 v15, v45

    move-object/from16 v46, v1

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v47, v1

    check-cast v47, Landroid/content/res/Configuration;

    move-object/from16 v16, v47

    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v48, v1

    check-cast v48, Landroid/content/res/CompatibilityInfo;

    move-object/from16 v17, v48

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v49

    move-object/from16 v18, v49

    move-object/from16 v50, v1

    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Landroid/os/Bundle;

    move-object/from16 v19, v51

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v20, v52

    sget-object v1, Landroid/content/AutofillOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v53, v1

    check-cast v53, Landroid/content/AutofillOptions;

    move-object/from16 v21, v53

    sget-object v1, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v54, v1

    check-cast v54, Landroid/content/ContentCaptureOptions;

    move-object/from16 v22, v54

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v55

    move-object/from16 v23, v55

    sget-object v1, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v56, v1

    check-cast v56, Landroid/os/SharedMemory;

    move-object/from16 v24, v56

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v57

    move-wide/from16 v25, v57

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v59

    move-wide/from16 v27, v59

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v46, v50

    invoke-virtual/range {v0 .. v28}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[JLandroid/os/SharedMemory;JJ)V

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    goto/16 :goto_848

    :pswitch_7b8  #0x3
    move/from16 v40, v11

    move-object/from16 v42, v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v10, p0

    invoke-virtual {v10, v0}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    move-object/from16 v11, p2

    goto/16 :goto_848

    :pswitch_7cc  #0x2
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v10, v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    sget-object v1, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v11, p2

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    goto :goto_848

    :pswitch_7f2  #0x1
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/Intent;

    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ActivityInfo;

    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/res/CompatibilityInfo;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    nop

    :goto_848
    return v40

    nop

    :pswitch_data_84a
    .packed-switch 0x5f4e5446
        :pswitch_22  #5f4e5446
    .end packed-switch

    :pswitch_data_850
    .packed-switch 0x1
        :pswitch_7f2  #00000001
        :pswitch_7cc  #00000002
        :pswitch_7b8  #00000003
        :pswitch_6ae  #00000004
        :pswitch_698  #00000005
        :pswitch_68d  #00000006
        :pswitch_673  #00000007
        :pswitch_668  #00000008
        :pswitch_65d  #00000009
        :pswitch_63b  #0000000a
        :pswitch_621  #0000000b
        :pswitch_603  #0000000c
        :pswitch_5ad  #0000000d
        :pswitch_5a2  #0000000e
        :pswitch_584  #0000000f
        :pswitch_572  #00000010
        :pswitch_53e  #00000011
        :pswitch_51c  #00000012
        :pswitch_502  #00000013
        :pswitch_4f7  #00000014
        :pswitch_4e1  #00000015
        :pswitch_4c3  #00000016
        :pswitch_486  #00000017
        :pswitch_464  #00000018
        :pswitch_446  #00000019
        :pswitch_43b  #0000001a
        :pswitch_430  #0000001b
        :pswitch_41a  #0000001c
        :pswitch_400  #0000001d
        :pswitch_3ee  #0000001e
        :pswitch_3a4  #0000001f
        :pswitch_362  #00000020
        :pswitch_348  #00000021
        :pswitch_32e  #00000022
        :pswitch_310  #00000023
        :pswitch_2f6  #00000024
        :pswitch_2e4  #00000025
        :pswitch_2ba  #00000026
        :pswitch_2a4  #00000027
        :pswitch_292  #00000028
        :pswitch_27c  #00000029
        :pswitch_26a  #0000002a
        :pswitch_258  #0000002b
        :pswitch_246  #0000002c
        :pswitch_23b  #0000002d
        :pswitch_225  #0000002e
        :pswitch_20b  #0000002f
        :pswitch_200  #00000030
        :pswitch_1ee  #00000031
        :pswitch_1dc  #00000032
        :pswitch_1c6  #00000033
        :pswitch_1b4  #00000034
        :pswitch_19e  #00000035
        :pswitch_174  #00000036
        :pswitch_13a  #00000037
        :pswitch_118  #00000038
        :pswitch_d6  #00000039
        :pswitch_92  #0000003a
        :pswitch_7c  #0000003b
        :pswitch_66  #0000003c
        :pswitch_54  #0000003d
        :pswitch_3e  #0000003e
        :pswitch_28  #0000003f
    .end packed-switch
.end method
