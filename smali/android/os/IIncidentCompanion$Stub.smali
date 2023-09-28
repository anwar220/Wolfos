# classes3.dex

.class public abstract Landroid/os/IIncidentCompanion$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IIncidentCompanion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentCompanion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentCompanion$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_approveReport:I = 0x5

.field static final TRANSACTION_authorizeReport:I = 0x1

.field static final TRANSACTION_cancelAuthorization:I = 0x2

.field static final TRANSACTION_deleteAllIncidentReports:I = 0xa

.field static final TRANSACTION_deleteIncidentReports:I = 0x9

.field static final TRANSACTION_denyReport:I = 0x6

.field static final TRANSACTION_getIncidentReport:I = 0x8

.field static final TRANSACTION_getIncidentReportList:I = 0x7

.field static final TRANSACTION_getPendingReports:I = 0x4

.field static final TRANSACTION_sendReportReadyBroadcast:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IIncidentCompanion"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIncidentCompanion$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentCompanion;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.IIncidentCompanion"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IIncidentCompanion;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/IIncidentCompanion;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/IIncidentCompanion$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIncidentCompanion$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_24

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xa
    const-string v0, "deleteAllIncidentReports"

    return-object v0

    :pswitch_8  #0x9
    const-string v0, "deleteIncidentReports"

    return-object v0

    :pswitch_b  #0x8
    const-string v0, "getIncidentReport"

    return-object v0

    :pswitch_e  #0x7
    const-string v0, "getIncidentReportList"

    return-object v0

    :pswitch_11  #0x6
    const-string v0, "denyReport"

    return-object v0

    :pswitch_14  #0x5
    const-string v0, "approveReport"

    return-object v0

    :pswitch_17  #0x4
    const-string v0, "getPendingReports"

    return-object v0

    :pswitch_1a  #0x3
    const-string/jumbo v0, "sendReportReadyBroadcast"

    return-object v0

    :pswitch_1e  #0x2
    const-string v0, "cancelAuthorization"

    return-object v0

    :pswitch_21  #0x1
    const-string v0, "authorizeReport"

    return-object v0

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_21  #00000001
        :pswitch_1e  #00000002
        :pswitch_1a  #00000003
        :pswitch_17  #00000004
        :pswitch_14  #00000005
        :pswitch_11  #00000006
        :pswitch_e  #00000007
        :pswitch_b  #00000008
        :pswitch_8  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 2

    const/16 v0, 0x9

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/os/IIncidentCompanion$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v9, p3

    const-string v10, "android.os.IIncidentCompanion"

    const/4 v11, 0x1

    if-lt v8, v11, :cond_16

    const v0, 0xffffff

    if-gt v8, v0, :cond_16

    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    :cond_16
    move-object/from16 v12, p2

    :goto_18
    packed-switch v8, :pswitch_data_f4

    packed-switch v8, :pswitch_data_fa

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_23  #0x5f4e5446
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_27  #0xa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IIncidentCompanion$Stub;->deleteAllIncidentReports(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f2

    :pswitch_36  #0x9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IIncidentCompanion$Stub;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_f2

    :pswitch_4d  #0x8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/IIncidentCompanion$Stub;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_f2

    :pswitch_68  #0x7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/os/IIncidentCompanion$Stub;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_f2

    :pswitch_7f  #0x6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IIncidentCompanion$Stub;->denyReport(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f2

    :pswitch_8d  #0x5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IIncidentCompanion$Stub;->approveReport(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_f2

    :pswitch_9b  #0x4
    invoke-virtual/range {p0 .. p0}, Landroid/os/IIncidentCompanion$Stub;->getPendingReports()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_f2

    :pswitch_a6  #0x3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Landroid/os/IIncidentCompanion$Stub;->sendReportReadyBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f2

    :pswitch_b5  #0x2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IIncidentAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentAuthListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Landroid/os/IIncidentCompanion$Stub;->cancelAuthorization(Landroid/os/IIncidentAuthListener;)V

    goto :goto_f2

    :pswitch_c4  #0x1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IIncidentAuthListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentAuthListener;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IIncidentCompanion$Stub;->authorizeReport(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IIncidentAuthListener;)V

    nop

    :goto_f2
    return v11

    nop

    :pswitch_data_f4
    .packed-switch 0x5f4e5446
        :pswitch_23  #5f4e5446
    .end packed-switch

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_c4  #00000001
        :pswitch_b5  #00000002
        :pswitch_a6  #00000003
        :pswitch_9b  #00000004
        :pswitch_8d  #00000005
        :pswitch_7f  #00000006
        :pswitch_68  #00000007
        :pswitch_4d  #00000008
        :pswitch_36  #00000009
        :pswitch_27  #0000000a
    .end packed-switch
.end method
