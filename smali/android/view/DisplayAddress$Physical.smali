# classes3.dex

.class public final Landroid/view/DisplayAddress$Physical;
.super Landroid/view/DisplayAddress;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/DisplayAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Physical"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/DisplayAddress$Physical;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODEL_SHIFT:I = 0x8

.field private static final UNKNOWN_MODEL:J


# instance fields
.field private final mPhysicalDisplayId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/DisplayAddress$Physical$1;

    invoke-direct {v0}, Landroid/view/DisplayAddress$Physical$1;-><init>()V

    sput-object v0, Landroid/view/DisplayAddress$Physical;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Long;)V
    .registers 8

    invoke-direct {p0}, Landroid/view/DisplayAddress;-><init>()V

    if-ltz p1, :cond_1d

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1d

    invoke-static {p1}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v0

    if-nez p2, :cond_12

    const-wide/16 v2, 0x0

    goto :goto_19

    :cond_12
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    :goto_19
    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    return-void

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The port should be in the interval [0, 255]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(ILjava/lang/Long;Landroid/view/DisplayAddress$Physical-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/DisplayAddress$Physical;-><init>(ILjava/lang/Long;)V

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Landroid/view/DisplayAddress;-><init>()V

    iput-wide p1, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    return-void
.end method

.method synthetic constructor <init>(JLandroid/view/DisplayAddress$Physical-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/DisplayAddress$Physical;-><init>(J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/view/DisplayAddress$Physical;

    if-eqz v0, :cond_11

    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    move-object v2, p1

    check-cast v2, Landroid/view/DisplayAddress$Physical;

    iget-wide v2, v2, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public getModel()Ljava/lang/Long;
    .registers 5

    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    goto :goto_11

    :cond_d
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_11
    return-object v2
.end method

.method public getPhysicalDisplayId()J
    .registers 3

    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    return-wide v0
.end method

.method public getPort()I
    .registers 5

    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getModel()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2e

    const-string v2, ", model=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2e
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/view/DisplayAddress$Physical;->mPhysicalDisplayId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
