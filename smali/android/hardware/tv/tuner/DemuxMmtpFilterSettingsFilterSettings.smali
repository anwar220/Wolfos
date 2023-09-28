# classes2.dex

.class public final Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final av:I = 0x2

.field public static final download:I = 0x5

.field public static final noinit:I = 0x0

.field public static final pesData:I = 0x3

.field public static final record:I = 0x4

.field public static final section:I = 0x1


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private _set(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c  #0x5
    const-string v0, "download"

    return-object v0

    :pswitch_1f  #0x4
    const-string v0, "record"

    return-object v0

    :pswitch_22  #0x3
    const-string v0, "pesData"

    return-object v0

    :pswitch_25  #0x2
    const-string v0, "av"

    return-object v0

    :pswitch_28  #0x1
    const-string v0, "section"

    return-object v0

    :pswitch_2b  #0x0
    const-string v0, "noinit"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b  #00000000
        :pswitch_28  #00000001
        :pswitch_25  #00000002
        :pswitch_22  #00000003
        :pswitch_1f  #00000004
        :pswitch_1c  #00000005
    .end packed-switch
.end method

.method public static av(Landroid/hardware/tv/tuner/DemuxFilterAvSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    :cond_10
    return v0
.end method

.method public static download(Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static noinit(Z)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static pesData(Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static record(Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static section(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_3c

    goto :goto_3b

    :pswitch_9  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3b

    :pswitch_13  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3b

    :pswitch_1d  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3b

    :pswitch_27  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3b

    :pswitch_31  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_3b
    return v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_31  #00000001
        :pswitch_27  #00000002
        :pswitch_1d  #00000003
        :pswitch_13  #00000004
        :pswitch_9  #00000005
    .end packed-switch
.end method

.method public getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    return-object v0
.end method

.method public getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    return-object v0
.end method

.method public getNoinit()Z
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    return-object v0
.end method

.method public getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    return-object v0
.end method

.method public getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    return-object v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "union: unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_20  #0x5
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c  #0x4
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_38  #0x3
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_44  #0x2
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_50  #0x1
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_5c  #0x0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5c  #00000000
        :pswitch_50  #00000001
        :pswitch_44  #00000002
        :pswitch_38  #00000003
        :pswitch_2c  #00000004
        :pswitch_20  #00000005
    .end packed-switch
.end method

.method public setAv(Landroid/hardware/tv/tuner/DemuxFilterAvSettings;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDownload(Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;)V
    .registers 3

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setNoinit(Z)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPesData(Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setRecord(Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSection(Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->_tag:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_3b

    :pswitch_b  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3b

    :pswitch_13  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getRecord()Landroid/hardware/tv/tuner/DemuxFilterRecordSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3b

    :pswitch_1b  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getPesData()Landroid/hardware/tv/tuner/DemuxFilterPesDataSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3b

    :pswitch_23  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getAv()Landroid/hardware/tv/tuner/DemuxFilterAvSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3b

    :pswitch_2b  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionSettings;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_3b

    :pswitch_33  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxMmtpFilterSettingsFilterSettings;->getNoinit()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_33  #00000000
        :pswitch_2b  #00000001
        :pswitch_23  #00000002
        :pswitch_1b  #00000003
        :pswitch_13  #00000004
        :pswitch_b  #00000005
    .end packed-switch
.end method
