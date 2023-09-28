# classes3.dex

.class public final Landroid/os/ParcelDuration;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/ParcelDuration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mNanos:I

.field private final mSeconds:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/ParcelDuration$1;

    invoke-direct {v0}, Landroid/os/ParcelDuration$1;-><init>()V

    sput-object v0, Landroid/os/ParcelDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    invoke-static {p1, p2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ParcelDuration;-><init>(Ljava/time/Duration;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ParcelDuration;->mSeconds:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/ParcelDuration;->mNanos:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/ParcelDuration-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/ParcelDuration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/time/Duration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/ParcelDuration;->mSeconds:J

    invoke-virtual {p1}, Ljava/time/Duration;->getNano()I

    move-result v0

    iput v0, p0, Landroid/os/ParcelDuration;->mNanos:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()Ljava/time/Duration;
    .registers 5

    iget-wide v0, p0, Landroid/os/ParcelDuration;->mSeconds:J

    iget v2, p0, Landroid/os/ParcelDuration;->mNanos:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/time/Duration;->ofSeconds(JJ)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Landroid/os/ParcelDuration;->getDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Landroid/os/ParcelDuration;->mSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/ParcelDuration;->mNanos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
