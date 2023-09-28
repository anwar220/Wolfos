# classes3.dex

.class public abstract Landroid/os/IIncidentManager$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/os/IIncidentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IIncidentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IIncidentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IIncidentManager"

.field static final TRANSACTION_deleteAllIncidentReports:I = 0xa

.field static final TRANSACTION_deleteIncidentReports:I = 0x9

.field static final TRANSACTION_getIncidentReport:I = 0x8

.field static final TRANSACTION_getIncidentReportList:I = 0x7

.field static final TRANSACTION_registerSection:I = 0x4

.field static final TRANSACTION_reportIncident:I = 0x1

.field static final TRANSACTION_reportIncidentToDumpstate:I = 0x3

.field static final TRANSACTION_reportIncidentToStream:I = 0x2

.field static final TRANSACTION_systemRunning:I = 0x6

.field static final TRANSACTION_unregisterSection:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.os.IIncidentManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IIncidentManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.os.IIncidentManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IIncidentManager;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/os/IIncidentManager;

    return-object v1

    :cond_14
    new-instance v1, Landroid/os/IIncidentManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IIncidentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2a

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
    const-string/jumbo v0, "systemRunning"

    return-object v0

    :pswitch_15  #0x5
    const-string/jumbo v0, "unregisterSection"

    return-object v0

    :pswitch_19  #0x4
    const-string/jumbo v0, "registerSection"

    return-object v0

    :pswitch_1d  #0x3
    const-string/jumbo v0, "reportIncidentToDumpstate"

    return-object v0

    :pswitch_21  #0x2
    const-string/jumbo v0, "reportIncidentToStream"

    return-object v0

    :pswitch_25  #0x1
    const-string/jumbo v0, "reportIncident"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_25  #00000001
        :pswitch_21  #00000002
        :pswitch_1d  #00000003
        :pswitch_19  #00000004
        :pswitch_15  #00000005
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

    invoke-static {p1}, Landroid/os/IIncidentManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.os.IIncidentManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_d8

    packed-switch p1, :pswitch_data_de

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IIncidentManager$Stub;->deleteAllIncidentReports(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d6

    :pswitch_2b  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentManager$Stub;->deleteIncidentReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_d6

    :pswitch_42  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentManager$Stub;->getIncidentReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IncidentManager$IncidentReport;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_d6

    :pswitch_5d  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/IIncidentManager$Stub;->getIncidentReportList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_d6

    :pswitch_73  #0x6
    invoke-virtual {p0}, Landroid/os/IIncidentManager$Stub;->systemRunning()V

    goto :goto_d6

    :pswitch_77  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IIncidentManager$Stub;->unregisterSection(I)V

    goto :goto_d6

    :pswitch_82  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IIncidentDumpCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentDumpCallback;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentManager$Stub;->registerSection(ILjava/lang/String;Landroid/os/IIncidentDumpCallback;)V

    goto :goto_d6

    :pswitch_99  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IIncidentReportStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentReportStatusListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/os/IIncidentManager$Stub;->reportIncidentToDumpstate(Ljava/io/FileDescriptor;Landroid/os/IIncidentReportStatusListener;)V

    goto :goto_d6

    :pswitch_ac  #0x2
    sget-object v2, Landroid/os/IncidentReportArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IncidentReportArgs;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IIncidentReportStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentReportStatusListener;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/IIncidentManager$Stub;->reportIncidentToStream(Landroid/os/IncidentReportArgs;Landroid/os/IIncidentReportStatusListener;Ljava/io/FileDescriptor;)V

    goto :goto_d6

    :pswitch_c7  #0x1
    sget-object v2, Landroid/os/IncidentReportArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IncidentReportArgs;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/os/IIncidentManager$Stub;->reportIncident(Landroid/os/IncidentReportArgs;)V

    nop

    :goto_d6
    return v1

    nop

    :pswitch_data_d8
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_c7  #00000001
        :pswitch_ac  #00000002
        :pswitch_99  #00000003
        :pswitch_82  #00000004
        :pswitch_77  #00000005
        :pswitch_73  #00000006
        :pswitch_5d  #00000007
        :pswitch_42  #00000008
        :pswitch_2b  #00000009
        :pswitch_1c  #0000000a
    .end packed-switch
.end method
