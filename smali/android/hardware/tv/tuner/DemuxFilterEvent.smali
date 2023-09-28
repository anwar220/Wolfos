# classes2.dex

.class public final Landroid/hardware/tv/tuner/DemuxFilterEvent;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/DemuxFilterEvent$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final download:I = 0x5

.field public static final ipPayload:I = 0x6

.field public static final media:I = 0x1

.field public static final mmtpRecord:I = 0x4

.field public static final monitorEvent:I = 0x8

.field public static final pes:I = 0x2

.field public static final section:I = 0x0

.field public static final startId:I = 0x9

.field public static final temi:I = 0x7

.field public static final tsRecord:I = 0x3


# instance fields
.field private _tag:I

.field private _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    iput-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/tv/tuner/DemuxFilterEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private _assertTag(I)V
    .registers 5

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTag()I

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

    invoke-direct {p0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tagString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTag()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tagString(I)Ljava/lang/String;

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

    iput p1, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    iput-object p2, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    return-void
.end method

.method private _tagString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_3a

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

    :pswitch_1c  #0x9
    const-string v0, "startId"

    return-object v0

    :pswitch_1f  #0x8
    const-string v0, "monitorEvent"

    return-object v0

    :pswitch_22  #0x7
    const-string v0, "temi"

    return-object v0

    :pswitch_25  #0x6
    const-string v0, "ipPayload"

    return-object v0

    :pswitch_28  #0x5
    const-string v0, "download"

    return-object v0

    :pswitch_2b  #0x4
    const-string v0, "mmtpRecord"

    return-object v0

    :pswitch_2e  #0x3
    const-string v0, "tsRecord"

    return-object v0

    :pswitch_31  #0x2
    const-string v0, "pes"

    return-object v0

    :pswitch_34  #0x1
    const-string v0, "media"

    return-object v0

    :pswitch_37  #0x0
    const-string v0, "section"

    return-object v0

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_37  #00000000
        :pswitch_34  #00000001
        :pswitch_31  #00000002
        :pswitch_2e  #00000003
        :pswitch_2b  #00000004
        :pswitch_28  #00000005
        :pswitch_25  #00000006
        :pswitch_22  #00000007
        :pswitch_1f  #00000008
        :pswitch_1c  #00000009
    .end packed-switch
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

.method public static download(Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static ipPayload(Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static media(Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mmtpRecord(Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static monitorEvent(Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static pes(Landroid/hardware/tv/tuner/DemuxFilterPesEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static section(Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static startId(I)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 4

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static temi(Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static tsRecord(Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;)Landroid/hardware/tv/tuner/DemuxFilterEvent;
    .registers 3

    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTag()I

    move-result v1

    packed-switch v1, :pswitch_data_64

    goto :goto_63

    :pswitch_9  #0x8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMonitorEvent()Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :pswitch_13  #0x7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTemi()Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :pswitch_1d  #0x6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getIpPayload()Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :pswitch_27  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :pswitch_31  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMmtpRecord()Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :pswitch_3b  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTsRecord()Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :pswitch_45  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getPes()Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :pswitch_4f  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMedia()Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_63

    :pswitch_59  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    nop

    :goto_63
    return v0

    :pswitch_data_64
    .packed-switch 0x0
        :pswitch_59  #00000000
        :pswitch_4f  #00000001
        :pswitch_45  #00000002
        :pswitch_3b  #00000003
        :pswitch_31  #00000004
        :pswitch_27  #00000005
        :pswitch_1d  #00000006
        :pswitch_13  #00000007
        :pswitch_9  #00000008
    .end packed-switch
.end method

.method public getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;
    .registers 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    return-object v0
.end method

.method public getIpPayload()Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;
    .registers 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    return-object v0
.end method

.method public getMedia()Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    return-object v0
.end method

.method public getMmtpRecord()Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    return-object v0
.end method

.method public getMonitorEvent()Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    return-object v0
.end method

.method public getPes()Landroid/hardware/tv/tuner/DemuxFilterPesEvent;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    return-object v0
.end method

.method public getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    return-object v0
.end method

.method public final getStability()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getStartId()I
    .registers 2

    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 2

    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    return v0
.end method

.method public getTemi()Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;
    .registers 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    return-object v0
.end method

.method public getTsRecord()Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_assertTag(I)V

    iget-object v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_98

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

    :pswitch_20  #0x9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2c  #0x8
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_38  #0x7
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_44  #0x6
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_50  #0x5
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_5c  #0x4
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_68  #0x3
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_74  #0x2
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterPesEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_80  #0x1
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_8c  #0x0
    sget-object v1, Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    invoke-direct {p0, v0, v1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_8c  #00000000
        :pswitch_80  #00000001
        :pswitch_74  #00000002
        :pswitch_68  #00000003
        :pswitch_5c  #00000004
        :pswitch_50  #00000005
        :pswitch_44  #00000006
        :pswitch_38  #00000007
        :pswitch_2c  #00000008
        :pswitch_20  #00000009
    .end packed-switch
.end method

.method public setDownload(Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;)V
    .registers 3

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setIpPayload(Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;)V
    .registers 3

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setMedia(Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setMmtpRecord(Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setMonitorEvent(Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPes(Landroid/hardware/tv/tuner/DemuxFilterPesEvent;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setSection(Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setStartId(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v1, v0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setTemi(Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;)V
    .registers 3

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setTsRecord(Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/tuner/DemuxFilterEvent;->_tag:I

    packed-switch v0, :pswitch_data_5c

    goto :goto_5b

    :pswitch_b  #0x9
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getStartId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5b

    :pswitch_13  #0x8
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMonitorEvent()Landroid/hardware/tv/tuner/DemuxFilterMonitorEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_1b  #0x7
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTemi()Landroid/hardware/tv/tuner/DemuxFilterTemiEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_23  #0x6
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getIpPayload()Landroid/hardware/tv/tuner/DemuxFilterIpPayloadEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_2b  #0x5
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getDownload()Landroid/hardware/tv/tuner/DemuxFilterDownloadEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_33  #0x4
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMmtpRecord()Landroid/hardware/tv/tuner/DemuxFilterMmtpRecordEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_3b  #0x3
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getTsRecord()Landroid/hardware/tv/tuner/DemuxFilterTsRecordEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_43  #0x2
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getPes()Landroid/hardware/tv/tuner/DemuxFilterPesEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_4b  #0x1
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getMedia()Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto :goto_5b

    :pswitch_53  #0x0
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/DemuxFilterEvent;->getSection()Landroid/hardware/tv/tuner/DemuxFilterSectionEvent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    nop

    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_53  #00000000
        :pswitch_4b  #00000001
        :pswitch_43  #00000002
        :pswitch_3b  #00000003
        :pswitch_33  #00000004
        :pswitch_2b  #00000005
        :pswitch_23  #00000006
        :pswitch_1b  #00000007
        :pswitch_13  #00000008
        :pswitch_b  #00000009
    .end packed-switch
.end method
