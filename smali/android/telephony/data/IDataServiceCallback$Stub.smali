# classes3.dex

.class public abstract Landroid/telephony/data/IDataServiceCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Landroid/telephony/data/IDataServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.telephony.data.IDataServiceCallback"

.field static final TRANSACTION_onApnUnthrottled:I = 0x9

.field static final TRANSACTION_onDataCallListChanged:I = 0x6

.field static final TRANSACTION_onDataProfileUnthrottled:I = 0xa

.field static final TRANSACTION_onDeactivateDataCallComplete:I = 0x2

.field static final TRANSACTION_onHandoverCancelled:I = 0x8

.field static final TRANSACTION_onHandoverStarted:I = 0x7

.field static final TRANSACTION_onRequestDataCallListComplete:I = 0x5

.field static final TRANSACTION_onSetDataProfileComplete:I = 0x4

.field static final TRANSACTION_onSetInitialAttachApnComplete:I = 0x3

.field static final TRANSACTION_onSetupDataCallComplete:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.telephony.data.IDataServiceCallback"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/data/IDataServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/telephony/data/IDataServiceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const-string v0, "android.telephony.data.IDataServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/data/IDataServiceCallback;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Landroid/telephony/data/IDataServiceCallback;

    return-object v1

    :cond_14
    new-instance v1, Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/data/IDataServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2e

    const/4 v0, 0x0

    return-object v0

    :pswitch_5  #0xa
    const-string/jumbo v0, "onDataProfileUnthrottled"

    return-object v0

    :pswitch_9  #0x9
    const-string/jumbo v0, "onApnUnthrottled"

    return-object v0

    :pswitch_d  #0x8
    const-string/jumbo v0, "onHandoverCancelled"

    return-object v0

    :pswitch_11  #0x7
    const-string/jumbo v0, "onHandoverStarted"

    return-object v0

    :pswitch_15  #0x6
    const-string/jumbo v0, "onDataCallListChanged"

    return-object v0

    :pswitch_19  #0x5
    const-string/jumbo v0, "onRequestDataCallListComplete"

    return-object v0

    :pswitch_1d  #0x4
    const-string/jumbo v0, "onSetDataProfileComplete"

    return-object v0

    :pswitch_21  #0x3
    const-string/jumbo v0, "onSetInitialAttachApnComplete"

    return-object v0

    :pswitch_25  #0x2
    const-string/jumbo v0, "onDeactivateDataCallComplete"

    return-object v0

    :pswitch_29  #0x1
    const-string/jumbo v0, "onSetupDataCallComplete"

    return-object v0

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29  #00000001
        :pswitch_25  #00000002
        :pswitch_21  #00000003
        :pswitch_1d  #00000004
        :pswitch_19  #00000005
        :pswitch_15  #00000006
        :pswitch_11  #00000007
        :pswitch_d  #00000008
        :pswitch_9  #00000009
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

    invoke-static {p1}, Landroid/telephony/data/IDataServiceCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    const-string v0, "android.telephony.data.IDataServiceCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    packed-switch p1, :pswitch_data_a0

    packed-switch p1, :pswitch_data_a6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_18  #0x5f4e5446
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1c  #0xa
    sget-object v2, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    goto/16 :goto_9f

    :pswitch_2c  #0x9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onApnUnthrottled(Ljava/lang/String;)V

    goto :goto_9f

    :pswitch_37  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onHandoverCancelled(I)V

    goto :goto_9f

    :pswitch_42  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onHandoverStarted(I)V

    goto :goto_9f

    :pswitch_4d  #0x6
    sget-object v2, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDataCallListChanged(Ljava/util/List;)V

    goto :goto_9f

    :pswitch_5a  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->onRequestDataCallListComplete(ILjava/util/List;)V

    goto :goto_9f

    :pswitch_6b  #0x4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetDataProfileComplete(I)V

    goto :goto_9f

    :pswitch_76  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetInitialAttachApnComplete(I)V

    goto :goto_9f

    :pswitch_81  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2}, Landroid/telephony/data/IDataServiceCallback$Stub;->onDeactivateDataCallComplete(I)V

    goto :goto_9f

    :pswitch_8c  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataCallResponse;

    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {p0, v2, v3}, Landroid/telephony/data/IDataServiceCallback$Stub;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    nop

    :goto_9f
    return v1

    :pswitch_data_a0
    .packed-switch 0x5f4e5446
        :pswitch_18  #5f4e5446
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_8c  #00000001
        :pswitch_81  #00000002
        :pswitch_76  #00000003
        :pswitch_6b  #00000004
        :pswitch_5a  #00000005
        :pswitch_4d  #00000006
        :pswitch_42  #00000007
        :pswitch_37  #00000008
        :pswitch_2c  #00000009
        :pswitch_1c  #0000000a
    .end packed-switch
.end method
