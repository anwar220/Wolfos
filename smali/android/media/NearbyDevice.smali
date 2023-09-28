# classes2.dex

.class public final Landroid/media/NearbyDevice;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/NearbyDevice$RangeZone;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/NearbyDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANGE_CLOSE:I = 0x3

.field public static final RANGE_FAR:I = 0x1

.field public static final RANGE_LONG:I = 0x2

.field public static final RANGE_UNKNOWN:I = 0x0

.field private static final RANGE_WEIGHT_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANGE_WITHIN_REACH:I = 0x4


# instance fields
.field private final mMediaRoute2Id:Ljava/lang/String;

.field private final mRangeZone:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/media/NearbyDevice;->RANGE_WEIGHT_LIST:Ljava/util/List;

    new-instance v0, Landroid/media/NearbyDevice$1;

    invoke-direct {v0}, Landroid/media/NearbyDevice$1;-><init>()V

    sput-object v0, Landroid/media/NearbyDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/NearbyDevice-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/NearbyDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    iput p2, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    return-void
.end method

.method public static compareRangeZones(II)I
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 v0, 0x0

    return v0

    :cond_4
    sget-object v0, Landroid/media/NearbyDevice;->RANGE_WEIGHT_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le v1, v0, :cond_1a

    const/4 v0, -0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0
.end method

.method public static rangeZoneToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_16

    const-string v0, "Invalid"

    return-object v0

    :pswitch_6  #0x4
    const-string v0, "WITHIN_REACH"

    return-object v0

    :pswitch_9  #0x3
    const-string v0, "CLOSE"

    return-object v0

    :pswitch_c  #0x2
    const-string v0, "LONG"

    return-object v0

    :pswitch_f  #0x1
    const-string v0, "FAR"

    return-object v0

    :pswitch_12  #0x0
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_f  #00000001
        :pswitch_c  #00000002
        :pswitch_9  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaRoute2Id()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    return-object v0
.end method

.method public getRangeZone()I
    .registers 2

    iget v0, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NearbyDevice{mediaRoute2Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rangeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    invoke-static {v1}, Landroid/media/NearbyDevice;->rangeZoneToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/media/NearbyDevice;->mMediaRoute2Id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/NearbyDevice;->mRangeZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
