# classes2.dex

.class public final Landroid/location/SatellitePvt$PositionEcef;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/SatellitePvt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionEcef"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/SatellitePvt$PositionEcef;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mUreMeters:D

.field private final mXMeters:D

.field private final mYMeters:D

.field private final mZMeters:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/SatellitePvt$PositionEcef$1;

    invoke-direct {v0}, Landroid/location/SatellitePvt$PositionEcef$1;-><init>()V

    sput-object v0, Landroid/location/SatellitePvt$PositionEcef;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/location/SatellitePvt$PositionEcef;->mXMeters:D

    iput-wide p3, p0, Landroid/location/SatellitePvt$PositionEcef;->mYMeters:D

    iput-wide p5, p0, Landroid/location/SatellitePvt$PositionEcef;->mZMeters:D

    iput-wide p7, p0, Landroid/location/SatellitePvt$PositionEcef;->mUreMeters:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getUreMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mUreMeters:D

    return-wide v0
.end method

.method public getXMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mXMeters:D

    return-wide v0
.end method

.method public getYMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mYMeters:D

    return-wide v0
.end method

.method public getZMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mZMeters:D

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PositionEcef{xMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$PositionEcef;->mXMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", yMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$PositionEcef;->mYMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$PositionEcef;->mZMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ureMeters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/location/SatellitePvt$PositionEcef;->mUreMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mXMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mYMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mZMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/SatellitePvt$PositionEcef;->mUreMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
