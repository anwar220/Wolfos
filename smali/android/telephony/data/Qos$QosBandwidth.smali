# classes3.dex

.class public Landroid/telephony/data/Qos$QosBandwidth;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/Qos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QosBandwidth"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/Qos$QosBandwidth;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field guaranteedBitrateKbps:I

.field maxBitrateKbps:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/telephony/data/Qos$QosBandwidth$1;

    invoke-direct {v0}, Landroid/telephony/data/Qos$QosBandwidth$1;-><init>()V

    sput-object v0, Landroid/telephony/data/Qos$QosBandwidth;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    iput p2, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/data/Qos$QosBandwidth-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/data/Qos$QosBandwidth;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    instance-of v2, p1, Landroid/telephony/data/Qos$QosBandwidth;

    if-nez v2, :cond_c

    goto :goto_1e

    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/telephony/data/Qos$QosBandwidth;

    iget v3, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    iget v4, v2, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    if-ne v3, v4, :cond_1c

    iget v3, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    iget v4, v2, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public getGuaranteedBitrateKbps()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    return v0
.end method

.method public getMaxBitrateKbps()I
    .registers 2

    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bandwidth { maxBitrateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " guaranteedBitrateKbps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->maxBitrateKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/Qos$QosBandwidth;->guaranteedBitrateKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
